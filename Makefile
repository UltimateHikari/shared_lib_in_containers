build: mylib main virt clean
virt:
	gcc src/virt2phys.c -o bin/virt
mylib:
	gcc -Wall -fPIC -c src/myshared.c -o bin/myshared.o
	gcc -shared bin/myshared.o -o bin/libmyshared.so
main:
	gcc -c src/main.c -o bin/main.o
	gcc bin/main.o -Lbin -lmyshared -o bin/main
clean:
	rm bin/main.o bin/myshared.o