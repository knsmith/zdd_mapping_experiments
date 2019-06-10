# Feynman -- quantum circuit toolkit
# Original (benchmarks/gf2^5_mult.qc):
#   Qubits: 15
#   H: 18
#   T: 175
#   cnot: 179
#   Depth: 137
#   T depth: 51
# Result (6.676ms):
#   Qubits: 15
#   H: 18
#   S: 2
#   T: 111
#   Z: 2
#   cnot: 179
#   Depth: 126
#   T depth: 38
.v a0 a1 a2 a3 a4 b0 b1 b2 b3 b4 c0 c1 c2 c3 c4
.i a0 a1 a2 a3 a4 b0 b1 b2 b3 b4
.o a0 a1 a2 a3 a4 b0 b1 b2 b3 b4 c0 c1 c2 c3 c4
BEGIN 
H c0
H c1
H c2
H c3
cnot a4 b1
cnot b1 c0
cnot c0 a4
T* a4
T* b1
T c0
cnot b1 a4
T* a4
cnot b1 c0
cnot c0 a4
cnot a4 b1
cnot a3 b2
cnot b2 c0
cnot c0 a3
T* a3
T* b2
T c0
cnot b2 a3
T* a3
cnot b2 c0
cnot c0 a3
cnot a3 b2
cnot a2 b3
cnot b3 c0
cnot c0 a2
T a2
T* c0
cnot b3 a2
T a2
cnot b3 c0
cnot c0 a2
cnot a2 b3
cnot a1 b4
cnot b4 c0
cnot c0 a1
T a1
T b4
T* c0
cnot b4 a1
T a1
cnot b4 c0
cnot c0 a1
cnot a1 b4
cnot a4 b2
cnot b2 c1
cnot c1 a4
T* a4
T* b2
T c1
cnot b2 a4
T* a4
cnot b2 c1
cnot c1 a4
cnot a4 b2
cnot a3 b3
cnot b3 c1
cnot c1 a3
T a3
T b3
T* c1
cnot b3 a3
T a3
cnot b3 c1
cnot c1 a3
cnot a3 b3
T c1
cnot a2 b4
cnot b4 c1
cnot c1 a2
T* a2
T* b4
T c1
cnot b4 a2
T* a2
cnot b4 c1
cnot c1 a2
cnot a2 b4
cnot a2 b3
cnot b3 c2
cnot c2 a2
T* a2
T c2
cnot b3 a2
T* a2
cnot b3 c2
cnot c2 a2
cnot a2 b3
cnot a3 b4
cnot b4 c2
cnot c2 a3
T a3
T b4
T* c2
cnot b4 a3
T a3
cnot b4 c2
cnot c2 a3
cnot a3 b4
T* c3
cnot a4 b4
cnot b4 c3
cnot c3 a4
T a4
T b4
T* c3
cnot b4 a4
T a4
cnot b4 c3
cnot c3 a4
cnot a4 b4
H c0
H c1
H c2
H c3
cnot c3 c0
cnot c2 c4
cnot c1 c3
cnot c0 c2
H c0
H c1
H c2
H c3
H c4
S a4
cnot a4 b0
cnot b0 c4
cnot c4 a4
T* a4
T* b0
T c4
cnot b0 a4
T* a4
cnot b0 c4
cnot c4 a4
cnot a4 b0
cnot a3 b1
cnot b1 c4
cnot c4 a3
T* a3
T* b1
T c4
cnot b1 a3
T* a3
cnot b1 c4
cnot c4 a3
cnot a3 b1
cnot a2 b2
cnot b2 c4
cnot c4 a2
T a2
T b2
T* c4
cnot b2 a2
T a2
cnot b2 c4
cnot c4 a2
cnot a2 b2
cnot a1 b3
cnot b3 c4
cnot c4 a1
T* a1
T* b3
T c4
cnot b3 a1
T* a1
cnot b3 c4
cnot c4 a1
cnot a1 b3
T* b4
T* c4
Z c4
cnot a0 b4
cnot b4 c4
cnot c4 a0
T* a0
T* b4
T c4
cnot b4 a0
T* a0
cnot b4 c4
cnot c4 a0
cnot a0 b4
T a3
cnot a3 b0
cnot b0 c3
cnot c3 a3
T* a3
T* b0
T c3
cnot b0 a3
T* a3
cnot b0 c3
cnot c3 a3
cnot a3 b0
cnot a2 b1
cnot b1 c3
cnot c3 a2
T* a2
T* b1
T c3
cnot b1 a2
T* a2
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
T* b3
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
S a2
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
T a1
T b1
T* c2
cnot b1 a1
T a1
cnot b1 c2
cnot c2 a1
cnot a1 b1
T b2
T c2
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
T* a1
cnot a1 b0
cnot b0 c1
cnot c1 a1
T* a1
T* b0
T c1
cnot b0 a1
T* a1
cnot b0 c1
cnot c1 a1
cnot a1 b0
T b1
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
T a0
T b0
Z b0
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
H c4
END
