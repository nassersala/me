# Reverse the first two items of an array using *under* in J

1 A.&.|. 44 77 88 99 

We can use this in a *hook* to get Pandigital numbers:

(#. 1 A.&.|. i.)each 2+i.10
