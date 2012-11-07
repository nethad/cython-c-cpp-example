from distutils.core import setup
from Cython.Build import cythonize
from distutils.extension import Extension
from Cython.Distutils import build_ext
from setup_util import get_include_dir, get_lib_dir

ext_modules =   [
    Extension("cmethod", ["cmethod.pyx"], language='c',
        libraries = list(), library_dirs = get_lib_dir(), include_dirs = get_include_dir(),
        extra_compile_args = ['-fPIC', '-O3']),
    Extension("pyrectangle", ["pyrectangle.pyx"], language='c++',
        libraries = list(), library_dirs = get_lib_dir(), include_dirs = get_include_dir(),
        extra_compile_args = ['-fPIC', '-O3'])
]

setup(
#    name = 'test app',
    cmdclass = {'build_ext': build_ext},
    ext_modules = ext_modules
)