# Feynman -- quantum circuit toolkit
# Original (benchmarks/tof_5.qc):
#   Qubits: 9
#   H: 14
#   T: 49
#   cnot: 49
#   Depth: 63
#   T depth: 21
# Result (15.330ms):
#   Qubits: 9
#   H: 14
#   T: 31
#   cnot: 49
#   Depth: 61
#   T depth: 19
.v 1 2 3 4 5 6 7 8 9
.i 1 2 3 4 5 9
.o 1 2 3 4 5 6 7 8 9
BEGIN 
H 6
T 6
cnot 1 2
cnot 2 6
cnot 6 1
T* 1
T 6
cnot 2 1
T* 1
cnot 2 6
cnot 6 1
cnot 1 2
H 6
H 7
T 7
cnot 3 6
cnot 6 7
cnot 7 3
T* 3
T 7
cnot 6 3
T* 3
cnot 6 7
cnot 7 3
cnot 3 6
H 7
H 8
T 8
cnot 4 7
cnot 7 8
cnot 8 4
T* 4
T 8
cnot 7 4
T* 4
cnot 7 8
cnot 8 4
cnot 4 7
H 8
H 9
T 5
T 8
T 9
cnot 5 8
cnot 8 9
cnot 9 5
T* 5
T* 8
T 9
cnot 8 5
T* 5
cnot 8 9
cnot 9 5
cnot 5 8
H 9
H 8
T* 8
cnot 4 7
cnot 7 8
cnot 8 4
T 4
T* 8
cnot 7 4
T 4
cnot 7 8
cnot 8 4
cnot 4 7
H 8
H 7
T* 7
cnot 3 6
cnot 6 7
cnot 7 3
T 3
T* 7
cnot 6 3
T 3
cnot 6 7
cnot 7 3
cnot 3 6
H 7
H 6
T* 6
cnot 1 2
cnot 2 6
cnot 6 1
T 1
T* 6
cnot 2 1
T 1
cnot 2 6
cnot 6 1
cnot 1 2
H 6
END
