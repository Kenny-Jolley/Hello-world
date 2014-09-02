# ============================================================================
# Name        : Makefile
# Author      : Kenny Jolley
# Version     : 1
# Copyright   : 2/9/2014
# Description : Makefile
# ============================================================================

#  .PHONY: all clean

# Change this line if you are using a different fortran compiler
FORTRAN_COMPILER = ifort
FORTRAN_COMPILER_FLAGS = -O3

TARGET = hello_world.exe

SOURCES = main.F90

.SUFFIXES: .F90 .o

OBJECTS = ${SOURCES:.F90=.o}

LINKER = $(FORTRAN_COMPILER)

# All Target
all: $(TARGET)


$(TARGET): $(OBJECTS)
	$(LINKER) -o $(TARGET) $(OBJECTS)

%.o: %.F90
	$(FORTRAN_COMPILER) -c $(FORTRAN_COMPILER_FLAGS) -o $@ $< 
	
	
clean:
	rm hello_world.exe
	rm *.o
	
	
.PHONY: all clean
