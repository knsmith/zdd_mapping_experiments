OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
u1(pi/4) q[6];
u2(pi/4,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[5];
u2(pi/4,pi) q[3];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[1],q[2];
u2(0,pi) q[2];
u2(pi/4,pi) q[0];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[1],q[2];
cx q[0],q[1];
u2(-pi/4,pi) q[0];
u2(pi/4,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[2];
u2(0,3*pi/4) q[0];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
cx q[6],q[0];
u2(0,pi) q[0];
u2(0,pi) q[6];
cx q[6],q[0];
u2(0,pi) q[6];
u2(0,pi) q[0];
cx q[6],q[0];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[6];
cx q[4],q[5];
u2(0,3*pi/4) q[5];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u1(-pi/4) q[6];
u2(0,5*pi/4) q[4];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
cx q[6],q[0];
u2(0,pi) q[0];
u2(0,pi) q[6];
cx q[6],q[0];
u2(0,pi) q[6];
u2(0,pi) q[0];
cx q[6],q[0];
u2(0,pi) q[6];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[4],q[5];
u2(pi/4,pi) q[4];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[5];
cx q[5],q[6];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
cx q[3],q[4];
u1(-pi/4) q[3];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
u2(0,pi) q[5];
u2(0,pi) q[6];
cx q[5],q[6];
cx q[4],q[5];
u1(-pi/4) q[5];
u1(pi/4) q[4];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
cx q[3],q[4];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
cx q[3],q[4];
u2(0,pi) q[3];
u2(0,pi) q[4];
u2(0,3*pi/4) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[4],q[5];
u2(0,pi) q[4];
cx q[3],q[4];
u1(-pi/4) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[3];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[2];
u2(0,pi) q[1];
u2(0,pi) q[4];
u2(0,pi) q[5];
cx q[6],q[0];
u2(0,pi) q[0];
u2(0,pi) q[6];
cx q[6],q[0];
u2(0,pi) q[6];
u2(0,pi) q[0];
cx q[6],q[0];
u2(0,pi) q[0];
cx q[0],q[1];
u2(pi/4,pi) q[0];
u2(-pi/4,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[2];
u2(0,5*pi/4) q[0];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
cx q[6],q[0];
u2(0,pi) q[0];
u2(0,pi) q[6];
cx q[6],q[0];
u2(0,pi) q[6];
u2(0,pi) q[0];
cx q[6],q[0];
u2(0,pi) q[0];
cx q[1],q[2];
u3(pi/4,pi/2,3*pi/2) q[2];
cx q[2],q[3];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(pi/4,pi) q[0];
u2(-pi/4,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
u2(0,pi) q[3];
cx q[2],q[3];
u2(0,pi) q[2];
cx q[1],q[2];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[1];
cx q[1],q[2];
u2(0,pi) q[2];
u2(0,5*pi/4) q[0];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
u2(0,pi) q[0];
cx q[1],q[2];
//DEPTH (returned by QISKIT): 180 |VOL.: 326 |2Q GATE COUNT: 121 
//calculated depth (max gates/qubit): 98
