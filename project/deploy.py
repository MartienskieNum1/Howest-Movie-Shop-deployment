import os

commands = [
'git clone git@git.ti.howest.be:TI/2020-2021/s4/dotnet-technology/cccp-ibc/project/students/maarten-de-meyere/app.git',
'git clone git@git.ti.howest.be:TI/2020-2021/s4/dotnet-technology/cccp-ibc/project/students/maarten-de-meyere/lib.git',

'dotnet new sln',
'dotnet sln add app/app.csproj',
'dotnet sln add lib/lib.csproj',
'dotnet add "app/app.csproj" reference lib/lib.csproj',

'dotnet clean',
'dotnet build',

'dotnet run --project app/app.csproj'
]

os.system("rm -rf build")
os.system("mkdir build")
os.chdir("build") 

for command in commands:    
    print(command)    
    os.system(command)
