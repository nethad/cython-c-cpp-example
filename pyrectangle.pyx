# CYTHON
from cython cimport *

from pyrectangle cimport *
from cmethod cimport *

cdef class PyRectangle:
    def __cinit__(self, int x0, int y0, int x1, int y1):
        self.x0 = x0
        self.y0 = y0
        self.x1 = x1
        self.y1 = y1

    def __dealloc__(self):
        pass

    cpdef getLength(self):
        return (self.x1 - self.x0)

    cpdef getHeight(self):
        return (self.y1 - self.y0)

    cpdef getArea(self):
        return (self.x1 - self.x0) * (self.y1 - self.y0)

    cpdef useinlinemethod(self):
        pass
#        return inlinemethod(1, 1)
