import os

commands = [
'git clone git@github.com:MartienskieNum1/Howest-Movie-Shop-app.git',
'git clone git@github.com:MartienskieNum1/Howest-Movie-Shop-lib.git',

'dotnet new sln',
'dotnet sln add Howest-Movie-Shop-app/app.csproj',
'dotnet sln add Howest-Movie-Shop-lib/lib.csproj',
'dotnet add "Howest-Movie-Shop-app/app.csproj" reference Howest-Movie-Shop-lib/lib.csproj',

'dotnet clean',
'dotnet build',

'dotnet run --project Howest-Movie-Shop-app/app.csproj'
]

os.system("rm -rf build")
os.system("mkdir build")
os.chdir("build") 

for command in commands:    
    print(command)    
    os.system(command)
