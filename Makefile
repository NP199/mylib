SRC =./src
TARGET =./target
CC =g++-9
CFLAGS =-std=c++2a -Wall -Werror
RM =rm -rf


all: clean main 

debug: clean main.debug

main: mainloop 
	$(CC) $(CFLAGS) -o $(TARGET)/main.out $(SRC)/main.cpp $(TARGET)/mainloop.o

mainloop:
	$(CC) $(CFLAGS) -c -o $(TARGET)/mainloop.o $(SRC)/mainloop.cpp

main.debug: mainloop.debug 
	$(CC) $(CFLAGS) -g -o $(TARGET)/main.out $(SRC)/main.cpp $(TARGET)/mainloop.o

mainloop.debug: 
	$(CC) $(CFLAGS) -g -o $(TARGET)/mainloop.o $(SRC)/mainloop.cpp

clean:
	$(RM) $(TARGET)/*.out