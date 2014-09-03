# Hello world example program

An example FORTRAN hello-world program

## Makefile

* `make`  will build the helloworld.exe executable
* `make clean` will delete all object files and helloworld.exe

## Compilers

The makefile calls ifort to compile the code.  If this is not available, then this must be changed to an available compiler, for example gfortran.

## Run using:

```sh
./helloworld.exe
```

Output:

```sh
Hello World!
```
