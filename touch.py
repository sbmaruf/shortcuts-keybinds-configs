import os	
import sys	
import subprocess	

path=sys.argv[1]	

for root, dirs, files in os.walk(path, topdown=False):	
    print(root, dirs, files)	
    for name in files:	
        file_name = os.path.join(root, name)	
        print(file_name)	
        subprocess.check_output("touch {}".format(file_name), shell=True)	
    for name in dirs:	
        dir_name = os.path.join(root, name)	
        subprocess.check_output("touch {}".format(dir_name), shell=True)	
        print(dir_name) 
