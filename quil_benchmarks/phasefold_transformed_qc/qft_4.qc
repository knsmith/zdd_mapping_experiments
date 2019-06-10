# Feynman -- quantum circuit toolkit
# Original (benchmarks/qft_4.qc):
#   Qubits: 5
#   H: 42
#   S: 22
#   T: 69
#   cnot: 48
#   Depth: 142
#   T depth: 48
# Result (7.255ms):
#   Qubits: 5
#   H: 42
#   T: 67
#   Z: 18
#   cnot: 48
#   Depth: 142
#   T depth: 48
.v x1 x2 x3 x4 0
.i x1 x2 x3 x4
.o x1 x2 x3 x4 0
BEGIN 
H x1
cnot x1 x2
T* x2
cnot x1 x2
T x1
T x2
H 0
cnot x3 x1
cnot x1 0
cnot 0 x3
T x3
T* 0
cnot x1 x3
cnot x1 0
T x3
T* 0
cnot x3 0
H x3
T x3
H x3
cnot x3 0
T* x3
T 0
cnot x1 0
cnot x1 x3
T 0
T* x3
cnot 0 x3
cnot x1 0
cnot x3 x1
H 0
cnot x1 0
H x1
T 0
T x1
cnot x4 0
cnot 0 x1
cnot x1 x4
T* x4
T* 0
T x1
cnot 0 x4
T* x4
cnot 0 x1
cnot x1 x4
cnot x4 0
H x1
cnot x1 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T 0
H 0
T* 0
Z 0
H 0
T 0
H 0
T 0
H 0
T 0
H 0
T 0
H 0
T* 0
Z 0
H 0
T 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T* 0
Z 0
H 0
T* 0
H 0
T 0
H 0
T* 0
Z 0
cnot x1 0
H x1
T 0
T x1
cnot x4 0
cnot 0 x1
cnot x1 x4
T* x4
T* 0
T x1
cnot 0 x4
T* x4
cnot 0 x1
cnot x1 x4
cnot x4 0
H x1
cnot x1 0
H x2
cnot x2 x3
T* x3
cnot x2 x3
T x2
T x3
H 0
cnot x4 x2
cnot x2 0
cnot 0 x4
T x4
T* 0
cnot x2 x4
cnot x2 0
T x4
T* 0
cnot x4 0
H x4
T x4
H x4
cnot x4 0
T* x4
T 0
cnot x2 0
cnot x2 x4
T 0
T* x4
cnot 0 x4
cnot x2 0
cnot x4 x2
H 0
H x3
cnot x3 x4
T* x4
cnot x3 x4
T x3
T* x4
Z x4
END
