# Files and the Filesystem


## File Paths
 
```
/Users/christina/Documents/my_project/data.csv
/home/christina/my_project/data.csv
C:\Users\christina\Documents\my_project\data.csv
```

are examples of _________________________________________

```
../my_project/data/data.csv
data.csv
data/data.csv
```

are examples of _________________________________________


The working directory is _________________________________________


&nbsp;________________________________________________________



### Special Patterns

In file paths, 

`..` means _________________________________________

`~` means _________________________________________



## Working with Files

To retrieve information from a file, ____________ from it.  To put information into a file, ____________ to it.

CSV (comma separated values) files are one type of plain text file.  Plain text files have no _______________ such as bold text, colors, or fonts.

R and Python expect that when data is stored in CSV (or tab-delimited) files, each observation is a ____________ and each variable is a ____________.  Rows and columns may or may not have names.  Data is stored in a rectangle: each row has the same number of columns, and each column has the same number of rows. 


\pagebreak

# Data Types

Common data types include:

* Boolean
* Integer
* Numeric
* Character

Boolean variables can be either ____________ or ____________.  When converted to an integer, ____________ becomes 0 and ____________ becomes 1.  

Most languages also have special types such as `NULL` or `None` that indicate no value.  These special types are different from missing value indicators (e.g. `NA`).

Character data is also known as ____________ or ____________ data.  

# Strings

Tabs, spaces, and new line characters are examples of ____________ characters.

`\n` is a ____________

`\t` is a ____________

A string without any characters in it (length 0) is called an ___________ string.

Strings are sorted in alphabetical order.  Lower case letters are different from upper case letters.  The order of upper and lower case letters depends on the program.

Strings must be surrounded by _____________.  In R and Python, single or double _____________ can be used, but they must match.  Pick one style and be consistent where possible!

`"north"` is a ____________ of `"northwestern"`.  

Concatenating strings means to ____________ the strings together.  

\pagebreak

# Variables

Variables let us refer to a value with a name.  We can use the same name, but change the value.  

`<-` in R, and `=` in Python, are ____________ operators.   The name of the variable goes on the ____________ side, and the value goes on the ____________.  Everything on the right hand side is evaluated first before the value is assigned to the variable.  

In R and Python, a variable with name `age_list` is the **[ same/not the same ]** is a variable with name `Age_list`.

If you run this code:

```
x = 3 
x + 2
x
```

the value of x at the end will be _____.

If you run this code:

```
x = 3 
y = x
x = x + 1
y = y + 2
y
```

the value of y at the end will be _____.

\pagebreak


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

Below, assume Python lists, which start with an index of 0.

To change the value of an element in a list, assign a new value to it:

```
my_list = [7, 6, 5, 4]
my_list[2] = 3
my_list
```

`my_list` now contains ________________________.

If instead you assign a new value as:
```
my_list = [7, 6, 5, 4]
my_list = [1, 2, 3]
my_list
```

`my_list` now contains ________________________.

\pagebreak

# Conditions

**[ True or False ]** When using variables with boolean values in a conditional statement, you should explicitly compare them to True or False to determine their value.

The operator to test for equality is _______.

Is the following **[ True or False ]**; `(TRUE and FALSE) or (not FALSE and TRUE)`


# Flow Control

If statements determine what to do based on a condition that evaluates to **[ a single/multiple ]** True or False value(s).

![](grid.png)

Where will the `*` in cell B3 of Figure 1 above end up if you execute the following statements?  

```
if the space to your right is occupied
  move one space up
  move one space right
else
  move one space right
if you are in column B
  move one space to your left
else if you are in column C
  move one space up
else 
  move one space down
```

\pagebreak

# For Loops

Loops are used to ____________ the same code for ____________ values.

The following code will print _____ numbers.

```
x = [1, 4, 3, 6, 7, 2]
for i in x
	if i < 5
		print i
``` 



# Functions

The values you send to a function are called ____________, while the variables that are defined in a function definition are called ____________.  

The ____________ of non-keyword arguments must match the ____________ of parameters in the function definition.

In Python, ____________ arguments cannot come before ____________ arguments.  In R, it's more complicated!

You can **[ always/never ]** use the name with all of the parameters when calling a function.

It **[ is/is not ]** good practice to specify arguments in a function call in the order they appear in the function definition, regardless of whether you're using named/keyword parameters or not.

Parameters without default values in a function definition are **[ required/optional ]**.

It's **[ OK/not OK ]** to have variables in your script with the same name as function parameters.

The output of a function is called the ____________ value.


\pagebreak

# Packages/Libraries

Packages/libraries/modules need to be ____________ before using them in every script or session.  Some are built-in, while others need to be ____________ first.

It's a **[ good/bad ]** idea to use packages written by other people.  


# Ways to Execute Code

When working interactively in the ____________, each input line starts with a ________________________, which may look like `> `, `>>> `, or `$` (or something else entirely) with a space after it.  After typing input, hit return to ____________ the code.  When the code is done executing, any output will be printed, and the command prompt will appear again at the start of a new line.  

You can also write a ____________: a file with many lines of code in it to be executed together.  They can be run from within your Integrated Development Environment (IDE) such as RStudio or Spyder, or from the command line.




