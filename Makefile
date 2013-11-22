#
#
#
#
CC = gcc
CFLAGS = -g -Wall
INC = -I./include
#LIB =
program: program.o bill.o fred.o
	${CC} -o ./bin/program program.o bill.o fred.o 

program.o: program.c 
	${CC} -c ${CFLAGS} ${INC} program.c

bill.o: bill.c 
	gcc -c bill.c ${CFLAGS} ${INC}

fred.o: fred.c 
	gcc -c fred.c ${CFLAGS} ${INC}

clean:
	rm -rf program.o bill.o fred.o
