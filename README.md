
### Cygwin

`swiftc -emit-library -I /usr/include -I /usr/include/w32api/ -I CWin32/ Sfc.swift`  

`cc main.c -L. -lSfc -o hello.exe`  

Runnable only from within a cygwin (if you double click it, it won't find the dlls) but it works.
