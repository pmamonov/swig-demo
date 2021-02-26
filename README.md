# Simple SWIG demo

## Build

```
$ make
```

## Test

```
$ python

>>> import test
>>> hz = test.hz()
>>> test.set_a(hz, 100)
>>> test.set_b(hz, 500)
>>> hz.a
100
>>> hz.b
500
>>> hz.a = 40
>>> hz.b = 2
>>> test.sum_ab(hz)
42
>>> 
```
