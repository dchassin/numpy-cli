[[//Hypot]]

~~~
Syntax:

  numpy Hypot [<function matrix at 0x10222a7a0>, <function matrix at 0x10222a7a0>]

hypot(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])

Given the "legs" of a right triangle, return its hypotenuse.

Equivalent to ``sqrt(x1**2 + x2**2)``, element-wise.  If `x1` or
`x2` is scalar_like (i.e., unambiguously cast-able to a scalar type),
it is broadcast for use with each element of the other argument.
(See Examples)

Parameters
----------
x1, x2 : array_like
    Leg of the triangle(s).
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
z : ndarray
    The hypotenuse of the triangle(s).
    This is a scalar if both `x1` and `x2` are scalars.

Examples
--------
>>> np.hypot(3*np.ones((3, 3)), 4*np.ones((3, 3)))
array([[ 5.,  5.,  5.],
       [ 5.,  5.,  5.],
       [ 5.,  5.,  5.]])

Example showing broadcast of scalar_like argument:

>>> np.hypot(3*np.ones((3, 3)), [4])
array([[ 5.,  5.,  5.],
       [ 5.,  5.,  5.],
       [ 5.,  5.,  5.]])
~~~