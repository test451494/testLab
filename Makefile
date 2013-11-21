#
#
#
#
CC = gcc
CFLAGS = -o
INC = -I./include
#LIB =
program: program.o bill.o fred.o
	${CC} ${CFLAGS} program program.o bill.o fred.o 

program.o: program.c 
	${CC} -c ${INC} program.c

bill.o: bill.c 
	gcc -c bill.c ${INC}

fred.o: fred.c 
	gcc -c fred.c ${INC}

clean:
	rm -rf program.o bill.o fred.o
