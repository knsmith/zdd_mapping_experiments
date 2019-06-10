from pyquil import Program, get_qc, list_quantum_computers
from pyquil.api import QuantumComputer, ForestConnection, QVM
from pyquil.gates import *
import numpy as np
import networkx as nx
from pyquil.api import LocalQVMCompiler
from pyquil.device import NxDevice

import re
import numpy as np
import sys
from qiskit import QuantumCircuit, ClassicalRegister, QuantumRegister
from qiskit import execute
from qiskit.dagcircuit import DAGCircuit
from qiskit import transpiler

def make_ibm_qasm(num_qubits,p):
    qr = QuantumRegister(num_qubits,"qr")
    p2 = QuantumCircuit(qr)
    for item in p:
        line = str(item).split(" ")
        if line[0].lower() == 'cz':
            p2.cz(qr[int(line[1])], qr[int(line[2])])
        elif line[0].lower() == 'cnot':
            p2.cx(qr[int(line[1])], qr[int(line[2])])
        elif line[0].lower() == 'h':
            p2.h(qr[int(line[1])])
        elif line[0].lower() == 's':
            p2.s(qr[int(line[1])])
        elif line[0].lower() == 'rz(-pi/2)':
            p2.sdg(qr[int(line[1])])
        elif line[0].lower() == 't':
            p2.t(qr[int(line[1])])
        elif line[0].lower() == 'rz(-pi/4)':
            p2.tdg(qr[int(line[1])])
        elif line[0].lower() == 'x':
            p2.x(qr[int(line[1])])
        elif line[0].lower() == 'y':
            p2.y(qr[int(line[1])])
        elif line[0].lower() == 'z':
            p2.z(qr[int(line[1])])
        else:
            print("GATE NOT FOUND. QUITTING...")
            sys.exit()
        
    return p2

def two_qubit_count(program):
    counter = 0
    if type(program) == QuantumCircuit:
        #ibm
        p = program.qasm()
        p_split = p.split(';')
        for item in p_split:
            item2= item.split()
            if item2 != []:
                if item2[0].lower() == 'cx':
                    counter = counter +1

    if type(program) == Program:
        #rigetti
        for item in program:
            line = str(item).split(" ")
            if line[0].lower() == 'cz':
                counter = counter +1
    return counter

def compute_depth_rigetti(p):
    levels = dict.fromkeys(p.get_qubits(), 0)
    for g in p.instructions:
        if isinstance(g, Gate):
            for q in g.get_qubits():
                levels[q] += 1
    return max(levels.values())

def compute_depth_ibm(p):
    qubit_dict={}
    p_split = p.split(';')
    for item in p_split:
        item2= item.split()
        if item2 != []:
            if ((item2[0].lower() !='openqasm')and
                (item2[0].lower() !='include')and
                (item2[0].lower() !='qreg')and
                (item2[0].lower() !='creg')):
                qubits = [int(s) for s in re.findall(r'-?\d+\.?\d*', item2[1])]
                for thing in qubits:
                    if thing in qubit_dict:
                        qubit_dict[thing] = qubit_dict[thing] +1
                    else:
                        qubit_dict[thing] =1
                        
                        
    max_key = max(qubit_dict, key=qubit_dict.get)
    return qubit_dict[max_key]


def compile_rigetti(num_qubits,topology,program):
    if topology.lower() == 'ring':
        edge_list = []
        for i in range(0,num_qubits):
            edge_list.append((i,(i+1)%num_qubits))
        
        topology = nx.from_edgelist(edge_list)
        device = NxDevice(topology)
    
        compiler=LocalQVMCompiler("http://localhost:6000",device)
        my_qc = QuantumComputer(name='my_qc', qam=QVM(connection=ForestConnection()), 
                            device=device, compiler=compiler)
        executable = compiler.quil_to_native_quil(program) #create QC compatible specification 
        depth = compute_depth_rigetti(executable)
        volume = len(executable)-3 #subtract extra directives 
        print(executable)
        q2_count = two_qubit_count(executable)
        out_str = str(executable)
        out_str = out_str + ("#DEPTH: %s |VOL.: %s |2Q GATE COUNT: %s\n" %(depth,volume,q2_count))
        print("DEPTH: %s |VOL.: %s |2Q GATE COUNT: %s" %(depth,volume,q2_count))
        print()
        print()
        return out_str

    
def compile_ibm(num_qubits,topology,program):
    if topology.lower() == 'ring':
        edge_list = []
        initial_layout = {}
        for i in range(0,num_qubits):
            edge_list.append((i,(i+1)%num_qubits))
            initial_layout[("qr",i)]=("qr",i)
        
        topology = nx.from_edgelist(edge_list)
        executable = transpiler.transpile(circuits=program, basis_gates="cx,u1,u2,u3",seed_mapper=1,
                                          coupling_map=edge_list,initial_layout=initial_layout)
        depth = executable.depth()
        volume = executable.size()
        q2_count = two_qubit_count(executable)
        qasm = executable.qasm()
        print(qasm)
        out_str = qasm
        out_str = out_str + ("//DEPTH (returned by QISKIT): %s |VOL.: %s |2Q GATE COUNT: %s \n" %(depth,volume,q2_count))
        out_str = out_str + ("//calculated depth (max gates/qubit): %s\n"%(compute_depth_ibm(qasm)))
        print("DEPTH (returned by QISKIT): %s |VOL.: %s |2Q GATE COUNT: %s " %(depth,volume,q2_count))
        print("calculated depth (max gates/qubit): %s"%(compute_depth_ibm(qasm)))
        print()
        print()
        return out_str
    

if __name__ == "__main__":
	benchmark = sys.argv[1]
	quil_in = Program(open(benchmark).read())
	qubits_used = max(quil_in.get_qubits())+1
	topology = 'ring'

	f_quil = open(benchmark[0:-5]+'_cmpled.quil','w')
	f_qasm = open(benchmark[0:-5]+'_cmpled.qasm','w')
	
	quil_out = compile_rigetti(qubits_used,topology,quil_in)
	f_quil.write(quil_out)
	f_quil.close()

	p_qasm = make_ibm_qasm(qubits_used,quil_in)
	qasm_out = compile_ibm(qubits_used,topology,p_qasm)
	f_qasm.write(qasm_out)
	f_qasm.close()



