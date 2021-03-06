''
''
'' gsl_matrix_float -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_matrix_float_bi__
#define __gsl_matrix_float_bi__

#include once "gsl_types.bi"
#include once "gsl_errno.bi"
#include once "gsl_check_range.bi"
#include once "gsl_vector_float.bi"

type gsl_matrix_float
	size1 as integer
	size2 as integer
	tda as integer
	data as single ptr
	block as gsl_block_float ptr
	owner as integer
end type

type _gsl_matrix_float_view
	matrix as gsl_matrix_float
end type

type gsl_matrix_float_view as _gsl_matrix_float_view

type _gsl_matrix_float_const_view
	matrix as gsl_matrix_float
end type

type gsl_matrix_float_const_view as _gsl_matrix_float_const_view

extern "c"
declare function gsl_matrix_float_alloc (byval n1 as integer, byval n2 as integer) as gsl_matrix_float ptr
declare function gsl_matrix_float_calloc (byval n1 as integer, byval n2 as integer) as gsl_matrix_float ptr
declare function gsl_matrix_float_alloc_from_block (byval b as gsl_block_float ptr, byval offset as integer, byval n1 as integer, byval n2 as integer, byval d2 as integer) as gsl_matrix_float ptr
declare function gsl_matrix_float_alloc_from_matrix (byval m as gsl_matrix_float ptr, byval k1 as integer, byval k2 as integer, byval n1 as integer, byval n2 as integer) as gsl_matrix_float ptr
declare function gsl_vector_float_alloc_row_from_matrix (byval m as gsl_matrix_float ptr, byval i as integer) as gsl_vector_float ptr
declare function gsl_vector_float_alloc_col_from_matrix (byval m as gsl_matrix_float ptr, byval j as integer) as gsl_vector_float ptr
declare sub gsl_matrix_float_free (byval m as gsl_matrix_float ptr)
declare function gsl_matrix_float_submatrix (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer, byval n1 as integer, byval n2 as integer) as _gsl_matrix_float_view
declare function gsl_matrix_float_row (byval m as gsl_matrix_float ptr, byval i as integer) as _gsl_vector_float_view
declare function gsl_matrix_float_column (byval m as gsl_matrix_float ptr, byval j as integer) as _gsl_vector_float_view
declare function gsl_matrix_float_diagonal (byval m as gsl_matrix_float ptr) as _gsl_vector_float_view
declare function gsl_matrix_float_subdiagonal (byval m as gsl_matrix_float ptr, byval k as integer) as _gsl_vector_float_view
declare function gsl_matrix_float_superdiagonal (byval m as gsl_matrix_float ptr, byval k as integer) as _gsl_vector_float_view
declare function gsl_matrix_float_view_array (byval base as single ptr, byval n1 as integer, byval n2 as integer) as _gsl_matrix_float_view
declare function gsl_matrix_float_view_array_with_tda (byval base as single ptr, byval n1 as integer, byval n2 as integer, byval tda as integer) as _gsl_matrix_float_view
declare function gsl_matrix_float_view_vector (byval v as gsl_vector_float ptr, byval n1 as integer, byval n2 as integer) as _gsl_matrix_float_view
declare function gsl_matrix_float_view_vector_with_tda (byval v as gsl_vector_float ptr, byval n1 as integer, byval n2 as integer, byval tda as integer) as _gsl_matrix_float_view
declare function gsl_matrix_float_const_submatrix (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer, byval n1 as integer, byval n2 as integer) as _gsl_matrix_float_const_view
declare function gsl_matrix_float_const_row (byval m as gsl_matrix_float ptr, byval i as integer) as _gsl_vector_float_const_view
declare function gsl_matrix_float_const_column (byval m as gsl_matrix_float ptr, byval j as integer) as _gsl_vector_float_const_view
declare function gsl_matrix_float_const_diagonal (byval m as gsl_matrix_float ptr) as _gsl_vector_float_const_view
declare function gsl_matrix_float_const_subdiagonal (byval m as gsl_matrix_float ptr, byval k as integer) as _gsl_vector_float_const_view
declare function gsl_matrix_float_const_superdiagonal (byval m as gsl_matrix_float ptr, byval k as integer) as _gsl_vector_float_const_view
declare function gsl_matrix_float_const_view_array (byval base as single ptr, byval n1 as integer, byval n2 as integer) as _gsl_matrix_float_const_view
declare function gsl_matrix_float_const_view_array_with_tda (byval base as single ptr, byval n1 as integer, byval n2 as integer, byval tda as integer) as _gsl_matrix_float_const_view
declare function gsl_matrix_float_const_view_vector (byval v as gsl_vector_float ptr, byval n1 as integer, byval n2 as integer) as _gsl_matrix_float_const_view
declare function gsl_matrix_float_const_view_vector_with_tda (byval v as gsl_vector_float ptr, byval n1 as integer, byval n2 as integer, byval tda as integer) as _gsl_matrix_float_const_view
declare function gsl_matrix_float_get (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer) as single
declare sub gsl_matrix_float_set (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer, byval x as single)
declare function gsl_matrix_float_ptr (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer) as single ptr
declare function gsl_matrix_float_const_ptr (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer) as single ptr
declare sub gsl_matrix_float_set_zero (byval m as gsl_matrix_float ptr)
declare sub gsl_matrix_float_set_identity (byval m as gsl_matrix_float ptr)
declare sub gsl_matrix_float_set_all (byval m as gsl_matrix_float ptr, byval x as single)
declare function gsl_matrix_float_fread (byval stream as FILE ptr, byval m as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_fwrite (byval stream as FILE ptr, byval m as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_fscanf (byval stream as FILE ptr, byval m as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_fprintf (byval stream as FILE ptr, byval m as gsl_matrix_float ptr, byval format as zstring ptr) as integer
declare function gsl_matrix_float_memcpy (byval dest as gsl_matrix_float ptr, byval src as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_swap (byval m1 as gsl_matrix_float ptr, byval m2 as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_swap_rows (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer) as integer
declare function gsl_matrix_float_swap_columns (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer) as integer
declare function gsl_matrix_float_swap_rowcol (byval m as gsl_matrix_float ptr, byval i as integer, byval j as integer) as integer
declare function gsl_matrix_float_transpose (byval m as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_transpose_memcpy (byval dest as gsl_matrix_float ptr, byval src as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_max (byval m as gsl_matrix_float ptr) as single
declare function gsl_matrix_float_min (byval m as gsl_matrix_float ptr) as single
declare sub gsl_matrix_float_minmax (byval m as gsl_matrix_float ptr, byval min_out as single ptr, byval max_out as single ptr)
declare sub gsl_matrix_float_max_index (byval m as gsl_matrix_float ptr, byval imax as integer ptr, byval jmax as integer ptr)
declare sub gsl_matrix_float_min_index (byval m as gsl_matrix_float ptr, byval imin as integer ptr, byval jmin as integer ptr)
declare sub gsl_matrix_float_minmax_index (byval m as gsl_matrix_float ptr, byval imin as integer ptr, byval jmin as integer ptr, byval imax as integer ptr, byval jmax as integer ptr)
declare function gsl_matrix_float_isnull (byval m as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_add (byval a as gsl_matrix_float ptr, byval b as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_sub (byval a as gsl_matrix_float ptr, byval b as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_mul_elements (byval a as gsl_matrix_float ptr, byval b as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_div_elements (byval a as gsl_matrix_float ptr, byval b as gsl_matrix_float ptr) as integer
declare function gsl_matrix_float_scale (byval a as gsl_matrix_float ptr, byval x as double) as integer
declare function gsl_matrix_float_add_constant (byval a as gsl_matrix_float ptr, byval x as double) as integer
declare function gsl_matrix_float_add_diagonal (byval a as gsl_matrix_float ptr, byval x as double) as integer
declare function gsl_matrix_float_get_row (byval v as gsl_vector_float ptr, byval m as gsl_matrix_float ptr, byval i as integer) as integer
declare function gsl_matrix_float_get_col (byval v as gsl_vector_float ptr, byval m as gsl_matrix_float ptr, byval j as integer) as integer
declare function gsl_matrix_float_set_row (byval m as gsl_matrix_float ptr, byval i as integer, byval v as gsl_vector_float ptr) as integer
declare function gsl_matrix_float_set_col (byval m as gsl_matrix_float ptr, byval j as integer, byval v as gsl_vector_float ptr) as integer
end extern

#endif
