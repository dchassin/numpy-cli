[[//Logaddexp]]

~~~
Syntax:

  numpy Logaddexp [<function matrix at 0x10222a7a0>, <function matrix at 0x10222a7a0>]

logaddexp(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])

Logarithm of the sum of exponentiations of the inputs.

Calculates ``log(exp(x1) + exp(x2))``. This function is useful in
statistics where the calculated probabilities of events may be so small
as to exceed the range of normal floating point numbers.  In such cases
the logarithm of the calculated probability is stored. This function
allows adding probabilities stored in such a fashion.

Parameters
----------
x1, x2 : array_like
    Input values.
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
result : ndarray
    Logarithm of ``exp(x1) + exp(x2)``.
    This is a scalar if both `x1` and `x2` are scalars.

See Also
--------
logaddexp2: Logarithm of the sum of exponentiations of inputs in base 2.

Notes
-----
.. versionadded:: 1.3.0

Examples
--------
>>> prob1 = np.log(1e-50)
>>> prob2 = np.log(2.5e-50)
>>> prob12 = np.logaddexp(prob1, prob2)
>>> prob12
-113.87649168120691
>>> np.exp(prob12)
3.5000000000000057e-50
~~~
