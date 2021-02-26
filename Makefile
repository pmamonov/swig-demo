CC		= gcc
CFLAGS		= -fpic -I/usr/include/python2.7 
LD		= ld
LDFLAGS		= -L. -shared

all: _test.so

test_wrap.c:
	swig -python test.i

_test.so: test_wrap.o libtest.so
	$(LD) $(LDFLAGS) -o $@ $< -ltest

libtest.so: test.o
	$(LD) $(LDFLAGS) -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f *.o *.so *.pyc test_wrap.c test.py
