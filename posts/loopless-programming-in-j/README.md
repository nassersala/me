# Loopless Programming in J

The following code states that if an item in *data* is less than 5, make it 5, otherwise, leave it unchanged:
```
  data =: 3 5 7 33
  data >. 5
5 5 7 33
```

Anohter example, we add one if the *data* item is either 3 or 7:
```
  data =: 3 5 7 33
  data+data e.3 7
4 5 8 33
```

The reason being *e.* verb returns boolean vector which has the shape of the left argument. If we wanted to add two instead we have to multiply the boolean vector by 2:
```
  data =: 3 5 7 33
  data+2*data e.3 7
5 5 9 33
```

## Merging arrays by multiplying the mask and addition

The following chooses first and last items from *x* and the middle two from *y*:
```
  x=:    1 2 3 4
  y=:    33 44 55 66
  mask=: 1 0 0 1
  (x*mask) + y*-.mask
1 44 55 4
```

The following half the input only if it is even:
```
  halfIfEven=: %1+0=2|]
  halfIfEven 13 20
13 10
```

## greaterThan is *left but not right*

```
  word =. 'eleemosynary'
  'e' = word                         NB. locations of 'e'
1 0 1 1 0 0 0 0 0 0 0 0
  'ee' E. word                       NB. locations of 'ee'
0 0 1 0 0 0 0 0 0 0 0 0
  ('e' = word) > ('ee' E. word)      NB. 'e' but not 'ee'
1 0 0 1 0 0 0 0 0 0 0 0
   +/ ('e' = word) > ('ee' E. word)   NB. how many of them?
2
```

## The power function is *Where* as in sql

Business rule: increase the salaries by 5% if the salary category is A:

```
  groups=:'ABAC'
  salaries=: 30000 32000 10000 13000
  salaries * 1.05 ^ groups = 'A'
31500 32000 10500 13000
```

## Camel casing using boolean masks

This example shows one of the most important idioms in array thinking. That is, *anding* the mask with some rotation or transformation of the same mask:

```
txt=. 'The quick.. brown'
abc=:'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
mask*.-._1|.mask=:txt e. abc
```
