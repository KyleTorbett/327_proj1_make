CFLAGS = -Wall
#target exe
all: myfunc.o
	g++ $(CFLAGS) -o myexe myfunc.o main.o
	
#rebuild if either of the files below change	
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp main.cpp

#type 'make clean' to remove following	
clean:
	rm -f *.o myexe
