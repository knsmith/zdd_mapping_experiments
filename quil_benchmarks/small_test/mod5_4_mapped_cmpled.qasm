OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
u3(1.57079632679490,3.14159265358979,3.14159265358979) q[1];
cx q[4],q[0];
u2(0,pi) q[4];
cx q[0],q[1];
u2(0,pi) q[1];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
cx q[0],q[1];
u2(0,pi) q[0];
u2(pi/4,pi) q[1];
u2(-pi/4,pi) q[4];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,3*pi/4) q[0];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
u2(0,pi) q[0];
cx q[0],q[1];
u2(0,pi) q[1];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
cx q[0],q[1];
cx q[4],q[0];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[4];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
u2(0,pi) q[0];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[3];
u2(0,pi) q[1];
cx q[0],q[1];
cx q[1],q[2];
u1(-pi/4) q[1];
u1(pi/4) q[0];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
u1(pi/4) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[2];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[2];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,5*pi/4) q[0];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
cx q[3],q[4];
u2(-pi/4,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u3(-pi/4,pi/2,3*pi/2) q[4];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[4];
u2(0,pi) q[3];
u2(-pi/4,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
u1(-pi/4) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[2];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[2];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,3*pi/4) q[0];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
cx q[3],q[4];
u2(pi/4,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u3(pi/4,pi/2,3*pi/2) q[4];
cx q[4],q[0];
u2(0,pi) q[4];
u2(0,pi) q[0];
cx q[4],q[0];
u2(0,pi) q[0];
u2(0,pi) q[4];
cx q[4],q[0];
u2(0,pi) q[4];
u2(pi/4,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
u1(pi/4) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[2];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
//DEPTH (returned by QISKIT): 141 |VOL.: 239 |2Q GATE COUNT: 92 
//calculated depth (max gates/qubit): 92
