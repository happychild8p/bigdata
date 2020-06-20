d <- c(1,4,3,7,8)
2*d #(2 8 6 14 16)
d-5 #(-4 -1 -2 2 3)
3*d+4 # (7 16 13 25 28)

x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y

sum(x)
mean(x)
median(x)
abs(x)
min(x)
max(x)
range(x)
range(x)[1]
range(x)[2]
var(x)
sd(x)
sort(x)
sort(x, decreasing = T)
length(x)
mean(x[c(2,1,4)])

a <- c(1,2,3,4,5)
b <- c(10:7, 1)
a < b
a == b
a | b
a & b
a != b

d <-  1:9
d>5
d[d>5]
d[d[c(F, F, F ,F, T, T, T)]]

cond <- d < 2 | d > 8
d[cond]

ds <- c(90,85,70,84)
my.info <- list(name ="Tom", age = 60, status=T, score=ds)
my.info
my.info[1]
my.info[[1]]
my.info$name
my.info$score
class(my.info$name)
class(my.info$age)
class(my.info$score)
class(my.info$score[1])
my.info$score[1]
my.info$score[1:3]
my.info$score[my.info$score > 84]
my.info$status

bt <- c("A","B","B","O","AB","A")
bt.new <- factor(bt)
bt.new
bt.new[length(bt.new)+1]= "A"
bt.new
bt[5]
bt.new[5]
levels(bt.new)
as.integer(bt.new)
as.integer(levels(bt.new))
levels(bt.new)
bt.new[length(bt.new)+1] = "B"
bt.new[length(bt.new)+1] = "C"
bt.new


## MATRIX AND DATAFRAME

z <- matrix(1:20, nrow=4, ncol=5)
z
z2 <- matrix(1:20, nrow=4, ncol=5, byrow = T)
z2

v1 <- 1:5

z3 <- matrix(c(11:15, 21:25, 31:35, 41:45),nrow=4, ncol=5,byrow=T)
z3
m1 <- rbind(z3,v1)
m1
m2 <- cbind(z3,v1[1:4])
m2
rbind(x, y)
cbind(x, y)
rbind(z2, z3) 

z3[1,3]
z3[1:3,3:5]
z3[seq(1,4,2),c(3,5,2)]
z3[,]
z3[1,]
class(z3[1,])

z3[c(2,1,4),]

score <- matrix(c(90,85,69,78,
                85,96,49,95,
                90,80,70,60), nrow=4, ncol=3)
score
rownames(score) <- c("John","Tom","Mark","Jane")
colnames(score) <- c("English", "Math", "Science")
score

score["John","Science"]
score["John", c(3,1)]
score["John", c("Math","English")]
score["John",2:1]
score[-2:-4,-3]
rownames(score)
colnames(score)
rownames(score)[3]
rownames(score)[-2]
colnames(score)[3]
score[rownames(score)[2], colnames(score)[3]]
score["Tom","Science"]
score["Jane",]

city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
city
rank
city.info <- data.frame(city, rank)
city.info

iris
iris[,c(1,2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length", "Species")]
iris[1:5,]
iris[1:5,1:3]
iris[1:5,c(1,3)]

dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
names(iris)
#rownames(iris)
head(iris, 12)
tail(iris, 5)

str(iris)
iris[,5]
unique(iris[,5])
table(iris[,"Species"])
class(iris$Species)
unique(iris$Species)

colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])[1]
rowMeans(iris[,-5])
sum(as.vector(iris[1,-5]))

z <- matrix(1:20, nrow=4, ncol=5)
z
t(z)

ir.1 <- subset(iris, Species == "setosa")
ir.1
ir.2 <- subset(iris, Sepal.Length > 5.0 & Sepal.Width >4.0)
ir.2
ir.2[,c(2,4)]

a <- matrix(1:20,4,5)
a
b <- matrix(21:40,4,5)
b

2*a
b-5
2*a + 3*b

a+b
b-a
b/a
a*b
a <- a*3
a
class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)
is.matrix(state.x77)
is.data.frame(state.x77)

st <- data.frame(state.x77)
st
head(st)
class(st)

iris.m <- as.matrix(iris[,-5])
iris.m

head(iris.m)
tail(iris.m)

iris[,"Species"]
iris.m[,"Sepal.Length"]
iris["Species"]
iris.m["Sepal.Length"]
iris$Species
iris$Sepal.Length

setwd("/home/heedong/scripts/bigdata/")
#air <- read.csv("name.csv", header = T) ## If header is TRUE, then use 1st row as a index
## If head is FALSE then 1st row is treated as just row
iris
write.csv(iris, "iris.csv", row.names = F)

mtcars
dim(mtcars)
str(mtcars)
help(mtcars)
rownames(mtcars[mtcars[,"mpg"] == max(mtcars[,"mpg"]),])
subset1 <- mtcars[(mtcars[,"gear"] == 4),]
rownames(subset1[subset1[,"mpg"] == min(subset1[,"mpg"]),])
mtcars["Honda Civic", c("mpg","gear")]
rownames(mtcars[mtcars[,"mpg"] > mtcars["Pontiac Firebird","mpg"],])    
mean(mtcars[,"mpg"])

unique(mtcars[,"gear"])
factor(mtcars[,"gear"])

airquality
class(airquality)
head(airquality)
dim(airquality)
str(airquality)
airquality[airquality[,"Temp"] == max(airquality["Temp"]),c("Month", "Day")]
max(airquality[airquality[,"Month"] == 6, "Wind"])
mean(airquality[airquality[,"Month"] == 7, "Temp"])

may <- subset(airquality, Month == 5)
mean(may[,"Ozone"], na.rm = T)
sum(airquality[,"Ozone"] > 100, na.rm = T)

swiss
str(swiss)
rownames(swiss[swiss$Agriculture == max(swiss$Agriculture),]) 
swiss[order(swiss[,"Agriculture"], decreasing = T),]
#swiss[sort(swiss[,"Agriculture"], decreasing = T),] 05-4
subset(swiss, swiss$Catholic > 80)["Agriculture"]
swiss

condi <- swiss[,"Examination"] < 20 & swiss[,"Agriculture"] < 50
swiss[condi, c("Examination", "Agriculture")]
    
sort(swiss$Agriculture, decreasing = T)

a <- state.x77[state.x77[,"Income"] > 5000, c("Income","Population","Area")]
#write.csv(a,a.csv, row.names = F)
#read.csv("a.csv", header = T)
