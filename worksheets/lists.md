Programming Concepts Workshop | https://github.com/nuitrcs/programming-concepts


\pagenumbering{gobble}

# Lists, Vectors, Arrays

____________ or ____________ hold multiple values (usually) of the same type.  ____________ hold multiple values, possibly of different types.

Elements are stored in order, and elements can be referenced by their ____________.  The first element has ____________ 0 or 1 depending on the language.  The ____________ of a list, vector, or array is the number of elements in it.  An empty list has a ____________ of 0.
  
You can ____________ an item to the beginning of a list or vector or ____________ an item to the end.  

Sometimes, lists can be ____________ inside other lists.


In R and Python, you can take a slice of a list (or R vector) using the list indices:

`my_list[a:b]`

Example:

`my_list[3:6]`

In Python, `a` is the index of the ____________ value, `b` is the index of the ____________ value EXCLUSIVE (meaning it's not included).  

In R, the first number is the index of the ____________ value, and the second number is the index of the ____________ value INCLUSIVE. 

# Assigning Values

To change the value of an element in a list, assign a new value to it:

```
my_list = [7,6,5,4]
my_list[2] = 3
my_list
```

`my_list` now contains ________________________.

If instead you assign a new value as:
```
my_list = [7,6,5,4]
my_list = [1,2,3]
my_list
```

`my_list` now contains ________________________.