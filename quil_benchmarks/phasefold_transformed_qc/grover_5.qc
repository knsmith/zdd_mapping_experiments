# Feynman -- quantum circuit toolkit
# Original (benchmarks/grover_5.qc):
#   Qubits: 9
#   H: 100
#   T: 336
#   X: 65
#   cnot: 336
#   Depth: 457
#   T depth: 144
# Result (61.661ms):
#   Qubits: 9
#   H: 100
#   S: 12
#   T: 154
#   X: 67
#   Z: 3
#   cnot: 336
#   Depth: 420
#   T depth: 96
.v a b c d e result 0 1 2
.i 
.o a b c d e result 0 1 2
BEGIN 
X result
H a
H b
H c
H d
H e
X e
X a
X b
H 0
T 0
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
H 1
T 1
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
H 2
T 2
cnot d 1
cnot 1 2
cnot 2 d
T* d
T 2
cnot 1 d
T* d
cnot 1 2
cnot 2 d
cnot d 1
H 2
cnot e 2
cnot 2 result
cnot result e
S* e
S result
cnot 2 e
S* e
cnot 2 result
cnot result e
cnot e 2
H 2
cnot d 1
cnot 1 2
cnot 2 d
T d
T* 2
cnot 1 d
T d
cnot 1 2
cnot 2 d
cnot d 1
H 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
X e
X a
X b
H a
H b
H c
H d
H e
X e
X a
X b
X c
X d
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
H e
T d
T 1
T e
cnot d 1
cnot 1 e
cnot e d
T* d
T* 1
T e
cnot 1 d
T* d
cnot 1 e
cnot e d
cnot d 1
H e
H 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
X e
X a
X b
X c
X d
H a
H b
H c
H d
H e
X e
X a
X b
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
cnot d 1
cnot 1 2
cnot 2 d
T* d
T 2
cnot 1 d
T* d
cnot 1 2
cnot 2 d
cnot d 1
H 2
cnot e 2
cnot 2 result
cnot result e
S* e
S result
cnot 2 e
S* e
cnot 2 result
cnot result e
cnot e 2
H 2
cnot d 1
cnot 1 2
cnot 2 d
T d
T* 2
cnot 1 d
T d
cnot 1 2
cnot 2 d
cnot d 1
H 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
X e
X a
X b
H a
H b
H c
H d
H e
X e
X a
X b
X c
X d
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
H e
T d
T 1
T e
cnot d 1
cnot 1 e
cnot e d
T* d
T* 1
T e
cnot 1 d
T* d
cnot 1 e
cnot e d
cnot d 1
H e
H 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
X e
X a
X b
X c
X d
H a
H b
H c
H d
H e
X e
X a
X b
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
cnot d 1
cnot 1 2
cnot 2 d
T* d
T 2
cnot 1 d
T* d
cnot 1 2
cnot 2 d
cnot d 1
H 2
cnot e 2
cnot 2 result
cnot result e
S* e
S result
cnot 2 e
S* e
cnot 2 result
cnot result e
cnot e 2
H 2
cnot d 1
cnot 1 2
cnot 2 d
T d
T* 2
cnot 1 d
T d
cnot 1 2
cnot 2 d
cnot d 1
H 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
X e
X a
X b
H a
H b
H c
H d
H e
X e
X a
X b
X c
X d
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
H e
T d
T 1
T e
cnot d 1
cnot 1 e
cnot e d
T* d
T* 1
T e
cnot 1 d
T* d
cnot 1 e
cnot e d
cnot d 1
H e
H 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
X e
X a
X b
X c
X d
H a
H b
H c
H d
H e
X e
X a
X b
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
cnot d 1
cnot 1 2
cnot 2 d
T* d
T 2
cnot 1 d
T* d
cnot 1 2
cnot 2 d
cnot d 1
H 2
Z result
cnot e 2
cnot 2 result
cnot result e
S* e
S result
cnot 2 e
S* e
cnot 2 result
cnot result e
cnot e 2
H result
H 2
T* 2
cnot d 1
cnot 1 2
cnot 2 d
T d
T* 2
cnot 1 d
T d
cnot 1 2
cnot 2 d
cnot d 1
H 2
H 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
X e
X a
X b
H a
H b
H c
H d
H e
X e
X a
X b
X c
X d
cnot a b
cnot b 0
cnot 0 a
T* a
T 0
cnot b a
T* a
cnot b 0
cnot 0 a
cnot a b
H 0
cnot c 0
cnot 0 1
cnot 1 c
T* c
T 1
cnot 0 c
T* c
cnot 0 1
cnot 1 c
cnot c 0
H 1
H e
T d
T 1
T e
cnot d 1
cnot 1 e
cnot e d
T* d
T* 1
T e
cnot 1 d
T* d
cnot 1 e
cnot e d
cnot d 1
H e
H 1
T* 1
cnot c 0
cnot 0 1
cnot 1 c
T c
T* 1
cnot 0 c
T c
cnot 0 1
cnot 1 c
cnot c 0
H 1
H 0
T* 0
cnot a b
cnot b 0
cnot 0 a
T a
T* 0
cnot b a
T a
cnot b 0
cnot 0 a
cnot a b
H 0
X e
X a
X b
X c
X d
H a
H b
H c
H d
H e
Z a
X a
Z a
X a
END
