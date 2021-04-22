import os

commands = [
    # your deploy commands
]

os.system("rm -rf build")
os.system("mkdir build")
os.chdir("build") 

for command in commands:    
    print(command)    
    os.system(command)
