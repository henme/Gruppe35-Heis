# Which compiler to use
CC = g++

# Compiler flags go here.
CFLAGS = -g -Wall -Wextra

# Linker flags go here.
LDFLAGS = -lcomedi -lm

# list of sources
ELEVSRC = main.cpp ElevatorListEntry.cpp ButtonList.cpp

# program executable file name.
TARGET = test

# top-level rule, to compile everything.
all: $(TARGET)

# Define all object files.
ELEVOBJ = $(ELEVSRC:.c=.o)

# rule to link the program
$(TARGET): $(ELEVOBJ)
	$(CC) $^ -o $@ $(LDFLAGS)

# Compile: create object files from C source files.
%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@ 

# rule for cleaning re-compilable files.
clean:
	rm -f $(TARGET) $(ELEVOBJ)

rebuild:	clean all

.PHONY: all rebuild clean