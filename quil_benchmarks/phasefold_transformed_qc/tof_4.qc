# Feynman -- quantum circuit toolkit
# Original (benchmarks/tof_4.qc):
#   Qubits: 7
#   H: 10
#   T: 35
#   cnot: 35
#   Depth: 45
#   T depth: 15
# Result (18.383ms):
#   Qubits: 7
#   H: 10
#   T: 23
#   cnot: 35
#   Depth: 44
#   T depth: 14
.v 1 2 3 4 5 6 7
.i 1 2 3 4 7
.o 1 2 3 4 5 6 7
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
H 6
T 6
cnot 3 5
cnot 5 6
cnot 6 3
T* 3
T 6
cnot 5 3
T* 3
cnot 5 6
cnot 6 3
cnot 3 5
H 6
H 7
T 4
T 6
T 7
cnot 4 6
cnot 6 7
cnot 7 4
T* 4
T* 6
T 7
cnot 6 4
T* 4
cnot 6 7
cnot 7 4
cnot 4 6
H 7
H 6
T* 6
cnot 3 5
cnot 5 6
cnot 6 3
T 3
T* 6
cnot 5 3
T 3
cnot 5 6
cnot 6 3
cnot 3 5
H 6
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
