


class(mtcars) 
# ??????????: "data.frame"

class(mtcars[, 2])
# ??????????: "numeric"

?mtcars # ?????????? ?????????????????? - cyl, 2 ??????????????

minimum = min(mtcars[, 2]) # ??????????: 4
sbs = subset(mtcars, cyl == 4)

cor(mtcars)
class(cor(mtcars))
# ??????????: "matrix" "array"

mpg_corr = cor(mtcars)["mpg",]


result_corr = subset(mpg_corr, mpg_corr < -0.7)
names(result_corr)

#?????????? "cyl"  "disp" "hp"   "wt"  
