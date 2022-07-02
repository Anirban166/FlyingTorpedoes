C = g++
M_DIR = ./Core/
U_SRC = ./Utils/
CFLAGS = -Wall -g -std=c++17 -Iinclude

test.bin: Missile.o MissileSilo.o main.o
	$(C) $(CFLAGS) -o test.bin Missile.o MissileSilo.o main.o

Missile.o: $(U_SRC)Missile.cpp
	$(C) $(CFLAGS) -c $(U_SRC)Missile.cpp

MissileSilo.o: $(U_SRC)MissileSilo.cpp
	$(C) $(CFLAGS) -c $(U_SRC)MissileSilo.cpp

main.o: $(M_DIR)main.cpp
	$(C) $(CFLAGS) -c $(M_DIR)main.cpp

clean:	
	rm test.bin Missile.o MissileSilo.o main.o