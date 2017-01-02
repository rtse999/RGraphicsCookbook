#
# R Graphics Cookbook - Chapter 2
#
# Location: /Users/raymondtse/Dropbox/Analysis/R packages/ggplot2/RGC_Chapter2.r
# First created: Sunday 1 January 2017
# Last modified: Sunday 1 January 2017
#

# Print system time
Sys.time()

# Packages
library(ggplot2)

# Scatter Plots
plot(mtcars$wt, mtcars$mpg)
qplot(mtcars$wt, mtcars$mpg)
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()

# Line Graphs
plot(pressure$temperature, pressure$pressure, type="l")
points(pressure$temperature, pressure$pressure)
lines(pressure$temperature, pressure$pressure/2, col="red")
points(pressure$temperature, pressure$pressure/2, col="red")

qplot(pressure$temperature, pressure$pressure, geom="line")
ggplot(pressure, aes(x=temperature, y=pressure)) +geom_line()

qplot(pressure$temperature, pressure$pressure, geom=c("line", "point"))
ggplot(pressure, aes(x=temperature, y=pressure)) +geom_line() + geom_point()

# Bar Graph
barplot(BOD$demand, names.arg = BOD$Time)
barplot(table(mtcars$cyl))

ggplot(BOD, aes(x=Time, y=demand)) + geom_bar(stat = "identity")
ggplot(mtcars, aes(x=factor(cyl))) +geom_bar()

# Histograms
hist(mtcars$mpg, breaks = 10)

ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth = 4)       

# Box plots
plot(ToothGrowth$supp, ToothGrowth$len)

ggplot(ToothGrowth, aes(x=supp, y=len)) + geom_boxplot()
ggplot(ToothGrowth, aes(x=interaction(supp, dose), y=len)) + geom_boxplot()

# Ploting a Function Curve
curve(x^3 - 5*x, from=-4, to=4)

myfun <- function(xvar) {
    1/(1+exp(-xvar+10))
}
  
ggplot(data.frame(x=c(0, 20)), aes(x=x)) + stat_function(fun=myfun, geom = "line")





