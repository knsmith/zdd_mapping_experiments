# Feynman -- quantum circuit toolkit
# Original (benchmarks/mod5_4.qc):
#   Qubits: 5
#   H: 6
#   T: 28
#   X: 1
#   cnot: 32
#   Depth: 41
#   T depth: 12
# Result (2.429ms):
#   Qubits: 5
#   H: 6
#   T: 16
#   X: 1
#   cnot: 32
#   Depth: 37
#   T depth: 10
.v b c d e a
.i b c d e
.o b c d e a
BEGIN 
X a
H a
cnot b e
cnot e a
cnot a b
T* e
T a
cnot e b
T* b
cnot e a
cnot a b
cnot b e
cnot d e
cnot e a
cnot a d
T e
T* a
cnot e d
T d
cnot e a
cnot a d
cnot d e
H a
cnot e a
H a
T a
cnot c d
cnot d a
cnot a c
T* c
T* d
T a
cnot d c
T* c
cnot d a
cnot a c
cnot c d
H a
cnot d a
H a
T* a
cnot b c
cnot c a
cnot a b
T b
T c
T* a
cnot c b
T b
cnot c a
cnot a b
cnot b c
H a
cnot c a
cnot b a
END
