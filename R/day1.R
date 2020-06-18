log(10, base=10)
sqrt(25)
max(5, 3, 2)
x <- 25
log(x, base=5)
sqrt(x^2)
y <- c(seq(1, 10, 2))
y
max(y)
range(y)[1]
min(y)
range(y)[2]
abs(-100)
factorial(4)
sin(pi)
cos(pi)
a <- 10
b <- 20
a+b
#a <- "A"
a+b
weight <- c(60,70,65,67,80)
class(length(weight))
for(i in 1:length(weight)){
  print(weight[i])
}
weight[1:3]
weight[c(range(1:5))]
weight[c(1:5)]
weight[1:5]
weight[c(5,2,4)]
weight[seq(1,5,2)]
weight

st <- c("A","B")
num <- c(1,2)
boo <- c(T,F,F)
st
num
boo

v1 <- 70:90
v1
v2 <-  c(1,2,5,60:68)
v2
v3 <- seq(0,25,4)
v3
v4 <- seq(0.0, 2.0, 0.15)
v4
v5 <- rep(1:3, times=3)
v5
v6 <- rep(c(1,6,8:10), times =4)
v6

score <- c(90,85,70)
score
names(score) <- c("John", "Kim", "Mike")
score
names(score)
score[3]
names(score[3])
names(score[2])
names(score)[3]
names(score)["Mike"] ## INVALID SYNTAX
names(score["Mike"])
score["Mike"]
score["Mike"][1]
#score["John":"Mike"] ## INVALID SYNTAX
score[1:3]
score[c("John", "Mike")]

d <- c(1,4,3,7,8)
d
d[-c(1,3,5)]
d[!d[1:3]]
d[seq(1,5,3)]
d[-2]
d[c(-1,-3)]

GNP <- c(2090, 2100, 1900)
GNP
names(GNP) <- c("Japan","Korea","Mexico")
GNP
GNP[length(GNP)+1] <- 2500
names(GNP)[length(GNP)] <- "Canada"
GNP

v1 <- c(1,5,2,8,9)
v1
v1[2] <- 3
v1
v1[c(1,5)] <- c(10,20)
v1
v1[seq(1,5,2)] <- c(0,0,0)
v1

d <- c(1,4,3,7,8)
2*d  # 2 8 6 14 16
d-5 # -4 -1 -2 2 3
3*d+4 # 7 16 13 25 28

x <- c(1,2,3)
y <- c(4,5,6)
x+y # 5 7 9
x*y # 4 10 18
x-y # -3 -3 -3
x/y # 0.25 0.4 0.5
y%%x #0 1 0
sum(x) # 6
mean(x) # 2
median(x) # 2
min(x) # 1
max(x) # 3
range(x) # 1, 3
a = min(x) == range(x)[1] #T
b <- max(x) == range(x)[2] #T
a
b
var(x)
var(y)
sd(x)
sd(y)
sort(x, decreasing = T)
c <- length(y) == length(x) # T
c
d1 <- 1:10
sum(d1/2)
mean(d1[1:6])
d1 >= 5 ### F F F F T T T T T T
d1[d1>=5]#### 5 6 7 8 9 10
sum(d1>5) ### 6 How many TRUEs?
sum(d1[d1>5]) ### sum of actual numbers(values or elements)

condition1 <- d1>4 & d1 <=7
d1[condition1]