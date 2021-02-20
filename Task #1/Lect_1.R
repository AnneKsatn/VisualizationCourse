Constants
TRUE, FALSE #logical constants. T, F #predefined variables, can to be redefined:
T
# TRUE
T = 1
T
# one
TRUE
# TRUE
TRUE = 1 # Error in TRUE = 1: invalid (do_set) left-hand side to assignment
NA #lack of data. All operations with NA that depend on it give NA:
1 + NA
# NA
T & NA
# NA
T | NA
# TRUE
NaN #not a number, Inf #infinity
1/0
# Inf
log (-1)
# NaN
Warning message: In log (-1): NaNs produced
NA, NaN, and Inf are values, and NULL is an empty object.
x = 1:10
x [1] = NA
x [1] = NULL # Error in x [1] = NULL: replacement has length zero
x = NULL
x
Variables:
#Typeless
#names begin with a letter or a dot, but never with number
#Names may contain [a-zA-Z0-9._]
#names are case sensitive

#############3
R #data types
#Vectors #datasets of the same type
#types: logical, integer, double (numeric), character [+ complex, raw]
num.var = c (1, 2.5, 4.5)
# L #integers
int.var = c (1L, 6L, 10L)
# logical vector
log.var = c (T, FALSE, TRUE, FALSE)
# string vector
chr.var = c ("these are", "some strings") # 'and "are completely equivalent
c (1, c (2, c (3, 4))) #[1] 1 2 3 4
#a vector of a certain length can be created using the appropriate features:
x = integer (10) # is initiated by zeros
x = character (10) # is initiated by empty lines
etc ...
#if NA needs to be initiated, then
x [] = NA # compare with x = NA


###################################
#When using the 'c' function, the commonest is taken (right in the series 
 logical, integer, double, character) type
c (T, T)
[1] TRUE TRUE
typeof (c (T, 0L))
[1] "integer"
typeof (c (T, 0L, 1))
[1] "double"
c (T, 0L, 'a')
[1] "TRUE" "0" "a"
#in some cases (if this does not lead to data loss) happens automatically
1 + TRUE
[12
1 & FALSE
[1] FALSE
1 + '10'
Error in 1 + "10": non-numeric argument to binary operator
#You can use functions of the form as to force type casting. ***
as.numeric (c ('1', '10.3'))
[1] 1.0 10.3
as.character (TRUE)
[1] "TRUE"


###############################################
Factors
#For categorical data (boy / girl) exists
#special data type: factor
f = factor (c ('a', 'b', 'b'))
f
[1] a b b
Levels: a b
levels (f)
[1] "a" "b"
#Allows you to store information about the category for which
#moment no representatives
sex.factor <#factor (c('m','f','f','f'), levels = c ("m", "f"))
sex.factor
[1] m m m
Levels: m f
table (sex.factor)
sex.factor
m f
thirty

##########################################################
Sheets (list)
#May contain data of various types. Including vector or other sheets
x = list (1: 3, "a", c (T, F, T), c (2.3, 5.9))
str (x) # convenient object display
List of 4
$: int [1: 3] 1 2 3
$: chr "a"
$: num [1: 3] 1 0 1
$: num [1: 2] 2.3 5.9
#if function c gets a leaf, it returns a leaf, but behaves somewhat other than list:
x = list (list (1, 2), c (3, 4))
y = c (list (1, 2), c (3, 4))
str (x)
#List of 2
#$: List of 2
#.. $: num 1
#.. $: num 2
#$: num [1: 2] 3 4
str (y)
#List of 4
#$: num 1
#$: num 2
#$: num 3
#$: num 4
unlist (x)

#Attributes: names
#in addition to the data itself, objects in R have attributes:
x = 1:10
attr (x, 'my.attr') = 'attr'
attributes (x)
$ my.attr
[1] "attr"
attr (x, 'names') = 9:18
 attributes (x)
$ my.attr
[1] "attr"
$ names
[1] "11" "12" "13" "14" "15" "16" "17" "18" "19" "20"
#For meaningful attributes, there are usually special functions:
names (x)
[1] "11" "12" "13" "14" "15" "16" "17" "18" "19" "20"
names (x) = 21:30
x
21 22 23 24 25 26 27 28 29 30
1 2 3 4 5 6 7 8 9 10
attr (, "my.attr")
[1] "attr"

###########################################################################
To obtain array elements
#You can give names when creating:
x = c (a = 1, b = 3, c = -1, d = -5, d = 10)
#can give names when creating:
you can get the items by numbers
x [c (1,4)]
a d
1 -5
-if we want to get all the elements less than zero?
x <0
a b c d d
FALSE FALSE TRUE TRUE FALSE
#use a logical index!
x [x <0]
c d
1 -5
#first negative element:
x [which (x <0) [1]]
still possible by name:
x [c ('b', 'a')]
b a
3 1
#but you have to be careful: names can be duplicated in vectors:
x ['d']
d
-5
#To obtain sheet items
x = list (1: 3, "a", c (T, F, T), c (2.3, 5.9))
names (x) = c ('num', 'a', 'log', 'last')
#using [] we get a sheet
x [1: 2]
$ num
[1] 1 2 3
$ a
[1] "a"
[[]] gives the given element (only one)
x [[2]]
[1] "a"
x $ log # analogue x [['log']]
[1] TRUE FALSE TRUE

########################33
#Matrices (matrix and array)
#create
a = matrix (c(1: 4), ncol = 2, nrow = 2)
# 3d array:
b = array (1:12, c (2, 3, 2))
#array sizes
length (a) # 12 #number of data
dim (a)
[1] 2 3
dim (b)
[1] 2 3 2
nrow (a)
[12
ncol (b)
[13
#Row and column names
colnames (a) = c ('a', 'b', 'c')
rownames (a) = c ('row1', 'row2')
a
a b c
row1 1 3 5
row2 2 4 6
b [1: 2,2,]
[,12]
[1,] 3 9
[2,] 4 10


dimnames (a)
[[one]]
[1] "row1" "row2"
[[2]]
[1] "a" "b" "c"
#All these are actually attributes:
attributes (a)
$ dim
[1] 2 3
$ dimnames
$ dimnames [[1]]
[1] "row1" "row2"
$ dimnames [[2]]
[1] "a" "b" "c"
#And they can be controlled directly:
x = 1:10
attr (x, 'dim') = c (2,3)
Error in attr (x, "dim") = c (2, 3):
dims [product 6] do not match the length of object [10]
attr (x, 'dim') = c (2,5) # the same as dim (x) = c (2,5)
x
[, 1] [, 2] [, 3] [, 4] [, 5]
[1,] 1 3 5 7 9
[2,] 2 4 6 8 10
#Reference to the elements multidimensional arrays
a = array (1: 12, dim = c (2,3,2))
b = a [1 ,,]
# matrix 2 * 3
b [c (T, F, T),] # logical index
b [-1, -1]
# everything except the first row and column
a [1,2: 3,]
# matrix 2 * 2data.frame
#vector sheet: a table in which each column can have its own type
x = data.frame (a = 1: 3, b = c (TRUE, TRUE, F), c = c ('a', 'b', 'c')) # the entry 'a =' allows you to give names
#columns
x
a b c
1 1 TRUE a
2 2 TRUE b
3 3 FALSE c
# for comparison:
cbind (a = 1: 3, b = c (T, T, F), c = c ('a', 'b', 'c'))
a b
c
[1,] "1" "TRUE" "a"
[2,] "2" "TRUE" "b"
[3,] "3" "FALSE" "c"
# Unlike matrices, data.frame does not allow duplicate row names (but not columns!)
rownames (x) = c ('r1', 'r2', 'r3')
x [c ('r2', 'r1'), c ('c', 'b')]
c b
r2 b TRUE
r1 a TRUE
#Operators
-
-
#Arithmetic: *, /, +, -, ^, %% (remainder of division),% /% (integer division)
#ogical:>, <,=, <=, |, &,!, ==,! =,
#&&, || #only for the first elements
1: 6/2: 7
[1] 0.5000000 0.6666667 0.7500000 0.8000000 0.8333333 0.8571429
#A short argument is automatically repeated as many times as necessary:
1: 6/1: 3
[1] 1.0 1.0 1.0 4.0 2.5 2.0
1: 6/1: 4
[1] 1 1 1 1 5 3
Warning message:
In 1: 6/1: 4:
longer object length is not a multiple of shorter object length
#The difference between | and ||
c (T, T) | c (F, F)
[1] TRUE TRUE
c (T, T) || c (F, F)
[1] TRUE '=' or '<-' holy war
R allows you to assign values to two, almost in equivalent ways:
x = 10
x <-9
8<-x # it's awful! never do that
# find the difference
x = 10
x <-5
x <-5 # now x is 5!




Useful features
? #help
is.na, is.null, is.nan
str #print the object in a convenient way
cat, print #print
match #find the numbers of all elements of the first argument in the second match (c (3,1), 10: -1)
which #find the numbers of all TRUE in the logical vector which (c (F, F, T, T))
ifelse #return one of two values depending on the condition ifelse (x0, log (x), exp (x))
floor #trim the fractional part
round #round
prod, sum #product and sum of elements
cummax, cummin, cumprod, cumsum #communicative maximum, etc.: cumsum (1:10)
max min
pmax, pmin #pmax (1: 4, c (2,1,1,1), c (1,4,2,2)) #2 4 3 4
range #c (min (x), max (x))
mean, median, cor, sd, var
intersect, union, setdiff, setequal,% in% #operations on sets
length, dim, ncol, nrow, names, colnames, rownames #characteristics of matrices and
data.frame
cbind, rbind #join matrices and data.frame
t #matrix transposition
rep, seq #generation of numerical arrays
sample #random sampling
typeof #type of data
#################
R has two data structures:
#vector #data of one type
#list #any data
#from these you can make two and more dimensional structures
#There are 3 ways to extract data from vectors / sheets / matrices / etc.
#by numbers
#by name
#logical index
data.frame #a table for which each column has its own type. actually a list of vectors
