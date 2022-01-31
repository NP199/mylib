SRC =./src
TARGET =./target
CC =g++-9
CFLAGS =-std=c++2a -Wall -Werror
RM =rm -rf


all: clean main 

debug: clean main.debug

main:  
	$(CC) $(CFLAGS) -o $(TARGET)/main.out $(SRC)/main.cpp 

main.debug: vectorfunctions.debug 
	$(CC) $(CFLAGS) -g -o $(TARGET)/main.out $(SRC)/main.cpp 

clean:
	$(RM) $(TARGET)/*.out