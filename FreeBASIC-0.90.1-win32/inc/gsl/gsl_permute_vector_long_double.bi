''
''
'' gsl_permute_vector_long_double -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_permute_vector_long_double_bi__
#define __gsl_permute_vector_long_double_bi__

#include once "gsl_errno.bi"
#include once "gsl_permutation.bi"
#include once "gsl_vector_long_double.bi"
#include once "gsl_types.bi"

extern "c"
declare function gsl_permute_vector_long_double (byval p as gsl_permutation ptr, byval v as gsl_vector_long_double ptr) as integer
declare function gsl_permute_vector_long_double_inverse (byval p as gsl_permutation ptr, byval v as gsl_vector_long_double ptr) as integer
end extern

#endif
