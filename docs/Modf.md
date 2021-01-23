[[//Modf]]

~~~
Syntax:

  numpy Modf [<function matrix at 0x10222a7a0>]

modf(x[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])

Return the fractional and integral parts of an array, element-wise.

The fractional and integral parts are negative if the given number is
negative.

Parameters
----------
x : array_like
    Input array.
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
y1 : ndarray
    Fractional part of `x`.
    This is a scalar if `x` is a scalar.
y2 : ndarray
    Integral part of `x`.
    This is a scalar if `x` is a scalar.

Notes
-----
For integer input the return values are floats.

See Also
--------
divmod : ``divmod(x, 1)`` is equivalent to ``modf`` with the return values
         switched, except it always has a positive remainder.

Examples
--------
>>> np.modf([0, 3.5])
(array([ 0. ,  0.5]), array([ 0.,  3.]))
>>> np.modf(-0.5)
(-0.5, -0)
~~~
