[[//Fmin]]

~~~
Syntax:

  numpy Fmin [<function matrix at 0x10222a7a0>, <function matrix at 0x10222a7a0>]

fmin(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])

Element-wise minimum of array elements.

Compare two arrays and returns a new array containing the element-wise
minima. If one of the elements being compared is a NaN, then the
non-nan element is returned. If both elements are NaNs then the first
is returned.  The latter distinction is important for complex NaNs,
which are defined as at least one of the real or imaginary parts being
a NaN. The net effect is that NaNs are ignored when possible.

Parameters
----------
x1, x2 : array_like
    The arrays holding the elements to be compared.
    If ``x1.shape != x2.shape``, they must be broadcastable to a common
    shape (which becomes the shape of the output).
out : ndarray, None, or tuple of ndarray and None, optional
    A location into which the result is stored. If provided, it must have
    a shape that the inputs broadcast to. If not provided or None,
    a freshly-allocated array is returned. A tuple (possible only as a
    keyword argument) must have length equal to the number of outputs.
where : array_like, optional
    This condition is broadcast over the input. At locations where the
    condition is True, the `out` array will be set to the ufunc result.
    Elsewhere, the `out` array will retain its original value.
    Note that if an uninitialized `out` array is created via the default
    ``out=None``, locations within it where the condition is False will
    remain uninitialized.
**kwargs
    For other keyword-only arguments, see the
    :ref:`ufunc docs <ufuncs.kwargs>`.

Returns
-------
y : ndarray or scalar
    The minimum of `x1` and `x2`, element-wise.
    This is a scalar if both `x1` and `x2` are scalars.

See Also
--------
fmax :
    Element-wise maximum of two arrays, ignores NaNs.
minimum :
    Element-wise minimum of two arrays, propagates NaNs.
amin :
    The minimum value of an array along a given axis, propagates NaNs.
nanmin :
    The minimum value of an array along a given axis, ignores NaNs.

maximum, amax, nanmax

Notes
-----
.. versionadded:: 1.3.0

The fmin is equivalent to ``np.where(x1 <= x2, x1, x2)`` when neither
x1 nor x2 are NaNs, but it is faster and does proper broadcasting.

Examples
--------
>>> np.fmin([2, 3, 4], [1, 5, 2])
array([1, 3, 2])

>>> np.fmin(np.eye(2), [0.5, 2])
array([[ 0.5,  0. ],
       [ 0. ,  1. ]])

>>> np.fmin([np.nan, 0, np.nan],[0, np.nan, np.nan])
array([ 0.,  0., nan])
~~~
