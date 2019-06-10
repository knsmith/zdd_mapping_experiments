# Feynman -- quantum circuit toolkit
# Original (benchmarks/gf2^4_mult.qc):
#   Qubits: 12
#   H: 14
#   T: 112
#   cnot: 115
#   Depth: 99
#   T depth: 36
# Result (6.329ms):
#   Qubits: 12
#   H: 14
#   S: 2
#   T: 68
#   Z: 3
#   cnot: 115
#   Depth: 91
#   T depth: 26
.v a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3
.i a0 a1 a2 a3 b0 b1 b2 b3
.o a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3
BEGIN 
H c0
H c1
H c2
cnot a3 b1
cnot b1 c0
cnot c0 a3
T* a3
T* b1
T c0
cnot b1 a3
T* a3
cnot b1 c0
cnot c0 a3
cnot a3 b1
cnot a2 b2
cnot b2 c0
cnot c0 a2
T* a2
T* b2
T c0
cnot b2 a2
T* a2
cnot b2 c0
cnot c0 a2
cnot a2 b2
T* c0
Z c0
cnot a1 b3
cnot b3 c0
cnot c0 a1
T* a1
T* b3
T c0
cnot b3 a1
T* a1
cnot b3 c0
cnot c0 a1
cnot a1 b3
cnot a3 b2
cnot b2 c1
cnot c1 a3
T a3
T b2
T* c1
cnot b2 a3
T a3
cnot b2 c1
cnot c1 a3
cnot a3 b2
S* c1
cnot a2 b3
cnot b3 c1
cnot c1 a2
T a2
T b3
T* c1
cnot b3 a2
T a2
cnot b3 c1
cnot c1 a2
cnot a2 b3
T c2
cnot a3 b3
cnot b3 c2
cnot c2 a3
T* a3
T* b3
T c2
cnot b3 a3
T* a3
cnot b3 c2
cnot c2 a3
cnot a3 b3
H c0
H c1
H c2
cnot c2 c3
cnot c1 c2
cnot c0 c1
H c0
H c1
H c2
H c3
cnot a3 b0
cnot b0 c3
cnot c3 a3
T a3
T b0
T* c3
cnot b0 a3
T a3
cnot b0 c3
cnot c3 a3
cnot a3 b0
cnot a2 b1
cnot b1 c3
cnot c3 a2
T a2
T b1
T* c3
cnot b1 a2
T a2
cnot b1 c3
cnot c3 a2
cnot a2 b1
cnot a1 b2
cnot b2 c3
cnot c3 a1
T a1
T b2
T* c3
cnot b2 a1
T a1
cnot b2 c3
cnot c3 a1
cnot a1 b2
Z c3
cnot a0 b3
cnot b3 c3
cnot c3 a0
T a0
T b3
T* c3
cnot b3 a0
T a0
cnot b3 c3
cnot c3 a0
cnot a0 b3
cnot a2 b0
cnot b0 c2
cnot c2 a2
T* a2
T* b0
T c2
cnot b0 a2
T* a2
cnot b0 c2
cnot c2 a2
cnot a2 b0
cnot a1 b1
cnot b1 c2
cnot c2 a1
T* a1
T* b1
T c2
cnot b1 a1
T* a1
cnot b1 c2
cnot c2 a1
cnot a1 b1
T* c2
Z c2
cnot a0 b2
cnot b2 c2
cnot c2 a0
T* a0
T* b2
T c2
cnot b2 a0
T* a0
cnot b2 c2
cnot c2 a0
cnot a0 b2
cnot a1 b0
cnot b0 c1
cnot c1 a1
T a1
T b0
T* c1
cnot b0 a1
T a1
cnot b0 c1
cnot c1 a1
cnot a1 b0
S* c1
cnot a0 b1
cnot b1 c1
cnot c1 a0
T a0
T b1
T* c1
cnot b1 a0
T a0
cnot b1 c1
cnot c1 a0
cnot a0 b1
T c0
cnot a0 b0
cnot b0 c0
cnot c0 a0
T* a0
T* b0
T c0
cnot b0 a0
T* a0
cnot b0 c0
cnot c0 a0
cnot a0 b0
H c0
H c1
H c2
H c3
END
