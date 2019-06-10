# Feynman -- quantum circuit toolkit
# Original (benchmarks/barenco_tof_5.qc):
#   Qubits: 9
#   H: 14
#   T: 84
#   cnot: 84
#   Depth: 108
#   T depth: 36
# Result (9.724ms):
#   Qubits: 9
#   H: 14
#   T: 40
#   cnot: 84
#   Depth: 102
#   T depth: 20
.v 1 2 3 4 5 6 7 8 9
.i 1 2 3 4 5 6 7 8 9
.o 1 2 3 4 5 6 7 8 9
BEGIN 
H 9
T 8
cnot 5 8
cnot 8 9
cnot 9 5
T* 5
T* 8
T 9
cnot 8 5
cnot 8 9
cnot 9 5
cnot 5 8
H 8
T 7
cnot 4 7
cnot 7 8
cnot 8 4
T* 4
T* 7
T 8
cnot 7 4
cnot 7 8
cnot 8 4
cnot 4 7
H 7
T 6
cnot 3 6
cnot 6 7
cnot 7 3
T* 3
T* 6
T 7
cnot 6 3
cnot 6 7
cnot 7 3
cnot 3 6
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
cnot 3 6
cnot 6 7
cnot 7 3
T 3
T* 7
cnot 6 3
cnot 6 7
cnot 7 3
cnot 3 6
H 7
cnot 4 7
cnot 7 8
cnot 8 4
T 4
T* 8
cnot 7 4
cnot 7 8
cnot 8 4
cnot 4 7
H 8
T* 8
cnot 5 8
cnot 8 9
cnot 9 5
T 5
T 8
T* 9
cnot 8 5
cnot 8 9
cnot 9 5
cnot 5 8
H 9
H 8
cnot 4 7
cnot 7 8
cnot 8 4
T* 4
T 8
cnot 7 4
cnot 7 8
cnot 8 4
cnot 4 7
H 7
cnot 3 6
cnot 6 7
cnot 7 3
T* 3
T 7
cnot 6 3
cnot 6 7
cnot 7 3
cnot 3 6
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
T* 6
cnot 3 6
cnot 6 7
cnot 7 3
T 3
T 6
T* 7
cnot 6 3
cnot 6 7
cnot 7 3
cnot 3 6
H 7
T* 7
cnot 4 7
cnot 7 8
cnot 8 4
T 4
T 7
T* 8
cnot 7 4
cnot 7 8
cnot 8 4
cnot 4 7
H 8
END
