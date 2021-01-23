[[//Divmod]]

~~~
Syntax:

  numpy Divmod [<function matrix at 0x10222a7a0>, <function matrix at 0x10222a7a0>]

divmod(x1, x2[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])

Return element-wise quotient and remainder simultaneously.

.. versionadded:: 1.13.0

``np.divmod(x, y)`` is equivalent to ``(x // y, x % y)``, but faster
because it avoids redundant work. It is used to implement the Python
built-in function ``divmod`` on NumPy arrays.

Parameters
----------
x1 : array_like
    Dividend array.
x2 : array_like
    Divisor array.
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
out1 : ndarray
    Element-wise quotient resulting from floor division.
    This is a scalar if both `x1` and `x2` are scalars.
out2 : ndarray
    Element-wise remainder from floor division.
    This is a scalar if both `x1` and `x2` are scalars.

See Also
--------
floor_divide : Equivalent to Python's ``//`` operator.
remainder : Equivalent to Python's ``%`` operator.
modf : Equivalent to ``divmod(x, 1)`` for positive ``x`` with the return
       values switched.

Examples
--------
>>> np.divmod(np.arange(5), 3)
(array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
~~~