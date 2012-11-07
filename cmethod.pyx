# CYTHON
from cython cimport *

cdef inline int inlinemethod(int a, int b):
    return a + b