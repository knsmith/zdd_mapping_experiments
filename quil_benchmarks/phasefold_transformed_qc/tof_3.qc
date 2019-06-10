# Feynman -- quantum circuit toolkit
# Original (benchmarks/tof_3.qc):
#   Qubits: 5
#   H: 6
#   T: 21
#   cnot: 21
#   Depth: 27
#   T depth: 9
# Result (17.471ms):
#   Qubits: 5
#   H: 6
#   T: 15
#   cnot: 21
#   Depth: 27
#   T depth: 9
.v 1 2 3 4 5
.i 1 2 3 4
.o 1 2 3 4 5
BEGIN 
H 5
T 5
cnot 1 2
cnot 2 5
cnot 5 1
T* 1
T 5
cnot 2 1
T* 1
cnot 2 5
cnot 5 1
cnot 1 2
H 5
H 4
T 3
T 5
T 4
cnot 3 5
cnot 5 4
cnot 4 3
T* 3
T* 5
T 4
cnot 5 3
T* 3
cnot 5 4
cnot 4 3
cnot 3 5
H 4
H 5
T* 5
cnot 1 2
cnot 2 5
cnot 5 1
T 1
T* 5
cnot 2 1
T 1
cnot 2 5
cnot 5 1
cnot 1 2
H 5
END
