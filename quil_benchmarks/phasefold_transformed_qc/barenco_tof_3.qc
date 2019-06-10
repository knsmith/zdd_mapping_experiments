# Feynman -- quantum circuit toolkit
# Original (benchmarks/barenco_tof_3.qc):
#   Qubits: 5
#   H: 6
#   T: 28
#   cnot: 28
#   Depth: 36
#   T depth: 12
# Result (38.826ms):
#   Qubits: 5
#   H: 6
#   T: 16
#   cnot: 28
#   Depth: 36
#   T depth: 10
.v 1 2 3 4 5
.i 1 2 3 4 5
.o 1 2 3 4 5
BEGIN 
H 5
T 4
cnot 3 4
cnot 4 5
cnot 5 3
T* 3
T* 4
T 5
cnot 4 3
cnot 4 5
cnot 5 3
cnot 3 4
H 4
T 4
cnot 1 2
cnot 2 4
cnot 4 1
T* 1
T 4
cnot 2 1
T* 1
cnot 2 4
cnot 4 1
cnot 1 2
H 4
T* 4
cnot 3 4
cnot 4 5
cnot 5 3
T 3
T 4
T* 5
cnot 4 3
cnot 4 5
cnot 5 3
cnot 3 4
H 5
H 4
T* 4
cnot 1 2
cnot 2 4
cnot 4 1
T 1
T* 4
cnot 2 1
T 1
cnot 2 4
cnot 4 1
cnot 1 2
H 4
END
