# CYTHON
from cython cimport *

#cdef extern from "Rectangle.h" namespace "shapes":
#    cdef cppclass Rectangle:
#        Rectangle(int, int, int, int) except +
#        int x0, y0, x1, y1
#        int getLength()
#        int getHeight()
#        int getArea()
#        void move(int, int)

cdef class PyRectangle:
#    cdef Rectangle *thisptr      # hold a C++ instance which we're wrapping
    cdef int x0
    cdef int x1
    cdef int y0
    cdef int y1

    cpdef getLength(self)
    cpdef getHeight(self)
    cpdef getArea(self)

    cpdef useinlinemethod(self)