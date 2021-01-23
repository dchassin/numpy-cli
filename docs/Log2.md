[[//Log2]]

~~~
Syntax:

  numpy Log2 [<function matrix at 0x10222a7a0>]

log2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])

Base-2 logarithm of `x`.

Parameters
----------
x : array_like
    Input values.
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
y : ndarray
    Base-2 logarithm of `x`.
    This is a scalar if `x` is a scalar.

See Also
--------
log, log10, log1p, emath.log2

Notes
-----
.. versionadded:: 1.3.0

Logarithm is a multivalued function: for each `x` there is an infinite
number of `z` such that `2**z = x`. The convention is to return the `z`
whose imaginary part lies in `[-pi, pi]`.

For real-valued input data types, `log2` always returns real output.
For each value that cannot be expressed as a real number or infinity,
it yields ``nan`` and sets the `invalid` floating point error flag.

For complex-valued input, `log2` is a complex analytical function that
has a branch cut `[-inf, 0]` and is continuous from above on it. `log2`
handles the floating-point negative zero as an infinitesimal negative
number, conforming to the C99 standard.

Examples
--------
>>> x = np.array([0, 1, 2, 2**4])
>>> np.log2(x)
array([-Inf,   0.,   1.,   4.])

>>> xi = np.array([0+1.j, 1, 2+0.j, 4.j])
>>> np.log2(xi)
array([ 0.+2.26618007j,  0.+0.j        ,  1.+0.j        ,  2.+2.26618007j])
~~~