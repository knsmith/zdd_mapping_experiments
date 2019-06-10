# Feynman -- quantum circuit toolkit
# Original (benchmarks/vbe_adder_3.qc):
#   Qubits: 10
#   H: 10
#   T: 70
#   cnot: 80
#   Depth: 79
#   T depth: 24
# Result (68.037ms):
#   Qubits: 10
#   H: 10
#   S: 6
#   T: 24
#   cnot: 80
#   Depth: 70
#   T depth: 13
.v 0 1 2 3 4 5 6 7 8 9
.i 0 1 2 3 4 5 6 7 8 9
.o 0 1 2 3 4 5 6 7 8 9
BEGIN 
H 3
H 6
H 9
cnot 1 2
cnot 2 3
cnot 3 1
T* 1
cnot 2 1
T* 1
cnot 2 3
cnot 3 1
cnot 1 2
cnot 1 2
cnot 0 2
cnot 2 3
cnot 3 0
S 0
T* 3
cnot 2 0
T 0
cnot 2 3
cnot 3 0
cnot 0 2
H 3
cnot 4 5
cnot 5 6
cnot 6 4
T* 4
cnot 5 4
T* 4
cnot 5 6
cnot 6 4
cnot 4 5
cnot 4 5
cnot 3 5
cnot 5 6
cnot 6 3
S 3
T* 6
cnot 5 3
T 3
cnot 5 6
cnot 6 3
cnot 3 5
H 6
T 7
T 8
cnot 7 8
cnot 8 9
cnot 9 7
T* 7
cnot 8 7
T* 7
cnot 8 9
cnot 9 7
cnot 7 8
cnot 7 8
T* 6
S* 8
cnot 6 8
cnot 8 9
cnot 9 6
S 6
T 8
T* 9
cnot 8 6
T 6
cnot 8 9
cnot 9 6
cnot 6 8
cnot 6 8
H 9
H 6
cnot 3 5
cnot 5 6
cnot 6 3
T 6
cnot 5 3
T* 3
cnot 5 6
cnot 6 3
cnot 3 5
cnot 4 5
cnot 4 5
cnot 5 6
cnot 6 4
T 4
S* 6
cnot 5 4
T 4
cnot 5 6
cnot 6 4
cnot 4 5
cnot 3 5
cnot 4 5
H 6
H 3
cnot 0 2
cnot 2 3
cnot 3 0
T 3
cnot 2 0
T* 0
cnot 2 3
cnot 3 0
cnot 0 2
cnot 1 2
cnot 1 2
cnot 2 3
cnot 3 1
T 1
S* 3
cnot 2 1
T 1
cnot 2 3
cnot 3 1
cnot 1 2
cnot 0 2
cnot 1 2
H 3
END
