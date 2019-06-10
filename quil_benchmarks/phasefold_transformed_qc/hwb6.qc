# Feynman -- quantum circuit toolkit
# Original (benchmarks/hwb6.qc):
#   Qubits: 7
#   H: 26
#   T: 105
#   X: 6
#   cnot: 131
#   Depth: 150
#   T depth: 45
# Result (41.073ms):
#   Qubits: 7
#   H: 26
#   S: 7
#   T: 75
#   X: 6
#   Z: 4
#   cnot: 131
#   Depth: 144
#   T depth: 38
.v a b c d e f 0
.i a b c d e f
.o a b c d e f
BEGIN 
X a
cnot c a
H c
T b
T c
cnot a b
cnot b c
cnot c a
T* a
T* b
T c
cnot b a
T* a
cnot b c
cnot c a
cnot a b
H c
cnot f d
cnot e f
H b
T b
cnot a c
cnot c b
cnot b a
T* a
T b
cnot c a
T* a
cnot c b
cnot b a
cnot a c
H b
H f
cnot a c
cnot c f
cnot f a
T* a
T f
cnot c a
T* a
cnot c f
cnot f a
cnot a c
cnot b d
X b
T b
T d
S f
cnot b d
cnot d f
cnot f b
T* b
T* d
T f
cnot d b
T* b
cnot d f
cnot f b
cnot b d
H f
cnot f e
cnot a b
cnot b a
cnot a e
cnot a b
H d
Z b
T* c
Z c
T d
cnot b c
cnot c d
cnot d b
T* b
T c
Z c
T d
cnot c b
T* b
cnot c d
cnot d b
cnot b c
H d
cnot b f
X f
H c
T c
cnot e f
cnot f c
cnot c e
T* e
T* f
T c
cnot f e
T* e
cnot f c
cnot c e
cnot e f
H c
H 0
T 0
cnot c e
cnot e 0
cnot 0 c
T* c
T 0
cnot e c
T* c
cnot e 0
cnot 0 c
cnot c e
H 0
H b
T 0
S f
T b
cnot 0 f
cnot f b
cnot b 0
T* 0
T* f
T b
cnot f 0
T* 0
cnot f b
cnot b 0
cnot 0 f
H b
H 0
T e
T* 0
cnot c e
cnot e 0
cnot 0 c
T c
T* 0
cnot e c
T c
cnot e 0
cnot 0 c
cnot c e
H 0
cnot f a
cnot a d
cnot f c
H f
T b
cnot b c
cnot c f
cnot f b
T* c
T f
cnot c b
T* b
cnot c f
cnot f b
cnot b c
cnot d e
cnot d b
cnot e a
S c
S f
cnot c e
cnot e f
cnot f c
T* c
T* e
T f
cnot e c
S* c
cnot e f
cnot f c
cnot c e
H f
cnot f c
cnot e f
H d
T d
cnot b e
cnot e d
cnot d b
T* b
T d
cnot e b
T* b
cnot e d
cnot d b
cnot b e
H d
H f
T a
T d
T f
cnot a d
cnot d f
cnot f a
T* a
T* d
T f
cnot d a
T* a
cnot d f
cnot f a
cnot a d
H f
X a
cnot a c
H a
S b
T* e
Z e
T a
cnot b e
cnot e a
cnot a b
T* b
S* e
T a
cnot e b
T* b
cnot e a
cnot a b
cnot b e
H a
cnot d c
H b
T a
T c
T b
cnot a c
cnot c b
cnot b a
T* a
T* c
T b
cnot c a
T* a
cnot c b
cnot b a
cnot a c
H b
cnot b a
cnot c e
X c
cnot b c
cnot a b
cnot d e
cnot f d
X f
END
