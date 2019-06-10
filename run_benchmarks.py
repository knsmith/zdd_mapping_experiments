import sys
import os
import subprocess

path_bench = "./quil_benchmarks/small_test"
path_zddmap = "./../build/examples/run_zddmap"
path_cmp_quil_qasm = "python compile_quil_qasm.py"

directory = os.fsencode(path_bench)


for file in os.listdir(directory):
        filename = os.fsdecode(file)
        if filename.endswith(".quil"):
                cmd_run_mapper = path_zddmap + " " + path_bench + filename + " > " +path_bench+ filename + ".log"
                subprocess.run(cmd_run_mapper, shell=True)


for file in os.listdir(directory):
        filename = os.fsdecode(file)
        if filename.endswith(".quil"):
                cmd_run_cmp = path_cmp_quil_qasm +" " + path_bench + filename
                subprocess.run(cmd_run_cmp, shell=True) 
                        
