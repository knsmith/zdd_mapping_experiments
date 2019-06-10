# Feynman -- quantum circuit toolkit
# Original (benchmarks/mod_mult_55.qc):
#   Qubits: 9
#   H: 14
#   T: 49
#   X: 8
#   cnot: 55
#   Depth: 50
#   T depth: 15
# Result (37.214ms):
#   Qubits: 9
#   H: 17
#   S: 4
#   T: 35
#   X: 10
#   Z: 1
#   cnot: 55
#   Depth: 49
#   T depth: 13
.v x0 x1 x2 y0 y1 y2 y3 y4 y5
.i x0 x1 x2
.o x0 x1 x2 y0 y1 y2 y3 y4 y5
BEGIN 
X x2
H y4
T y4
cnot x0 x2
cnot x2 y4
cnot y4 x0
T* x0
T y4
cnot x2 x0
T* x0
cnot x2 y4
cnot y4 x0
cnot x0 x2
H y4
X x2
X x0
H y3
H y5
T y4
T y3
cnot x1 y4
cnot y4 y3
cnot y3 x1
T* x1
T* y4
T y3
cnot y4 x1
T* x1
cnot y4 y3
cnot y3 x1
cnot x1 y4
T y5
cnot x0 x2
cnot x2 y5
cnot y5 x0
T* x0
T y5
cnot x2 x0
T* x0
cnot x2 y5
cnot y5 x0
cnot x0 x2
H y5
H y3
cnot y3 y2
cnot y3 y0
cnot y5 y4
X x1
X y4
H y0
H y3
T y5
T y3
cnot x1 y5
cnot y5 y3
cnot y3 x1
T* x1
T* y5
T y3
cnot y5 x1
T* x1
cnot y5 y3
cnot y3 x1
cnot x1 y5
T* y0
cnot x1 y4
cnot y4 y0
cnot y0 x1
T x1
T* y0
cnot y4 x1
T x1
cnot y4 y0
cnot y0 x1
cnot x1 y4
H y3
H y0
X x1
cnot y3 y1
cnot y2 y5
H y2
H y5
S* y4
T* y2
cnot x1 y4
cnot y4 y2
cnot y2 x1
T x1
T* y2
cnot y4 x1
T x1
cnot y4 y2
cnot y2 x1
cnot x1 y4
T* x0
T* x2
T* y5
cnot x0 x2
cnot x2 y5
cnot y5 x0
T x0
T* x2
T* y5
cnot x2 x0
T x0
cnot x2 y5
cnot y5 x0
cnot x0 x2
H y5
H y2
X x0
X y4
cnot y2 y5
H x0
S x0
H x0
S x0
H x0
Z x0
X x0
S x0
X x0
END
