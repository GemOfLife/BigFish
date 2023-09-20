@echo off
REM x64 builds begin
SET PATH=C:\msys64\mingw64\bin;C:\msys64\usr\bin;%PATH%

Title "x86-64-bmi2"
make clean
mingw32-make profile-build ARCH=x86-64-bmi2 COMP=mingw CXX=x86_64-w64-mingw32-g++ -j %Number_Of_Processors%
strip bullfish.exe
ren bullfish.exe "BullFish_Dev.exe"


REM x64 builds end
pause
