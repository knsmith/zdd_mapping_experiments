import sys

#In this file, Clifford+t network in .qc file format can be transformed into a .quil file format.

def dotQCtoQUIL(f_name):
    file = open(f_name, 'r')
    qubit_log = {}
    qubit_count = 0
    nf = open(f_name[0:-3]+".quil",'w')
    for line in file:
        new_line = line.lower().split()
        if new_line == []:
            continue
        if new_line[0] == '#':
            continue
        if new_line[0] == '.v':
            continue
        if new_line[0] == '.i':
            continue
        if new_line[0] == '.o':
            continue
        if new_line[0] == 'begin':
            continue
        if new_line[0] == 'end':
            continue
            
        if new_line[0] == 'h':
            if new_line[1] in qubit_log:
                nf.write('H '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('H '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 'x':
            if new_line[1] in qubit_log:
                nf.write('X '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('X '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 'y':
            if new_line[1] in qubit_log:
                nf.write('Y '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('Y '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 'z':
            if new_line[1] in qubit_log:
                nf.write('Z '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('Z '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 's':
            if new_line[1] in qubit_log:
                nf.write('S '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('S '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 's*':
            if new_line[1] in qubit_log:
                nf.write('RZ(-pi/2) '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('RZ(-pi/2) '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 't':
            if new_line[1] in qubit_log:
                nf.write('T '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('T '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 't*':
            if new_line[1] in qubit_log:
                nf.write('RZ(-pi/4) '+ str(qubit_log[new_line[1]])+'\n')
            else:
                qubit_log[new_line[1]] = qubit_count
                qubit_count+=1
                nf.write('RZ(-pi/4) T '+ str(qubit_log[new_line[1]])+'\n')
        if new_line[0] == 'cnot':
            if (new_line[1] in qubit_log) and (new_line[2] in qubit_log) :
                nf.write('CNOT '+ str(qubit_log[new_line[1]])+ ' '+ str(qubit_log[new_line[2]])+'\n')
            else:
                if new_line[1] not in qubit_log:
                    qubit_log[new_line[1]] = qubit_count
                    qubit_count+=1
                if new_line[2] not in qubit_log:
                    qubit_log[new_line[2]] = qubit_count
                    qubit_count+=1
                nf.write('CNOT '+ str(qubit_log[new_line[1]])+ ' '+ str(qubit_log[new_line[2]])+'\n')

    file.close()
    nf.close()
            



if __name__ == "__main__":
    dotQCtoQUIL(sys.argv[1])


    


