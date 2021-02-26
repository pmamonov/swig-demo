CC		= gcc
CFLAGS		= -fpic -I/usr/include/python2.7 

all: _test.so

test_wrap.c:
	swig -python test.i

_test.so: test.o test_wrap.o
	$(CC) $(CFLAGS) -shared $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f *.o *.so *.pyc test_wrap.c test.py
