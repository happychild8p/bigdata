z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z)
sum(is.na(z))
sum(z, na.rm=T)

z2 <- c(5,8,1,NA,3,NA,7)
z[is.na(z)] <- 0
z
z3 <- as.vector(na.omit(z2))
z3

x <- iris
x[1,2] <- NA; x[1,3] <- NA; x[2,3] <- NA; x[3,4] <- NA
na.omit(x)
head(x)
##count # of NA
for (i in 1:ncol(x)){
  this.na <- is.na(x[,i])
  cat(colnames(x)[i], "\t", sum(this.na), "\n")
}

rowSums(is.na(x))
sum(rowSums(is.na(x)))

sum(is.na(x))
head(x)
complete.cases(x)
y <- x[complete.cases(x),]
x[!complete.cases(x),]
y

st <- data.frame(state.x77)
apply(st, 2, boxplot.stats)
boxplot(st$Income)
boxplot.stats(st$Income)$out

st[st$Income == boxplot.stats(st$Income)$out,"Income"] = NA
st$Income
sta <- st[complete.cases(st),]
sta

v1 <- c(1,7,6,8,4,2,3)
order(v1)
v1 <- sort(v1)
v2 <- sort(v1, decreasing = T)
v2
v3 <- order(v1)
v3
v1

head(iris)
order(iris$Sepal.Length)
ir <- iris[iris$Sepal.Length,]
ir
iir <- iris[order(iris$Species, iris$Petal.Length, decreasing = T),]
iir

sp <- split(iris, iris$Species)
sp
summary(sp)
sp$setosa
sp$versicolor
sp$virginica

subset(iris, iris$Species =="setosa")
subset(iris, iris$Sepal.Length >= 7.5 & iris$Petal.Length > 3.0)
subset(iris, iris$Sepal.Length >7.5, select=c(Petal.Length, Petal.Width))
subset(iris, iris$Sepal.Length >7.5)[,c("Petal.Length","Petal.Width")]

x <- 1:15
y <- sample(x, 10, replace = T)
y
z <- sample(x, 10, replace = F)
z

idx <- sample(1:nrow(iris), 50, replace = F)
idx
i50 <- iris[idx,]
i50
sp <- split(i50, i50$Species)
summary(sp) 
nrow(sp$setosa)
nrow(sp$versicolor)
nrow(sp$virginica)
dim(i50)
set.seed(100)
x <- 1:15
sample(x, 10, replace = T)
sample(x, 10, replace = F)

agg <- aggregate(iris[,-5], by=list(iris$Species), mean)
agg
agg2 <- aggregate(iris[,-5], by=list(iris$Species), sum)
agg2
agg3 <- aggregate(iris[,-5], by=list(iris$Species), var)
agg3
agg4 <- aggregate(iris[,-5], by=list(iris$Species), sd)
agg4
agg5 <- aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs), max)
agg5
agg6 <- aggregate(mtcars, by=list(mtcars$cyl), median)
agg6

x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(name=c("a","b","d"), english=c(74,50,65))
x;y
z <- merge(x,y, by="name")
z
merge(x,y,all.x=T)
merge(x,y,all.y=T)
merge(x,y,all=T)

x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(sname=c("a","b","d"), english=c(74,50,65))
merge(x,y, by.x="name", by.y="sname")

####PRTQUIZ
#1
ds <- state.x77
ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA 
ds
for (i in 1:ncol(ds)){
  nas <- sum(is.na(ds[,i]))
  cat("Column ", colnames(ds)[i]," has ",nas, "NA values\n")
}
is.na(ds)
ds[!complete.cases(ds),]
rowSums(is.na(ds))
nrow(ds[!complete.cases(ds),])
ds.new <- ds[complete.cases(ds),]
ds.new
#2
st <- data.frame(state.x77)
boxplot(st)
popout <- boxplot.stats(st$Population)$out
incout <- boxplot.stats(st$Income)$out
araout <- boxplot.stats(st$Area)$out
popout
st[st$Population %in% popout,"Population"] <- NA
st[st$Income %in% incout,"Income"] <- NA
st[st$Area %in% araout,"Area"] <- NA
st
st <- data.frame(state.x77)
st2 <- st[complete.cases(st),]
st2
#3
aq <- airquality
colSums(is.na(aq))
rowSums(is.na(aq))
aq[complete.cases(aq),]
nrow(aq[complete.cases(aq),])
aq2 <- aq

for (i in 1:ncol(aq)){
  aq2[is.na(aq2[,i]),i] = mean(aq2[complete.cases(aq2),i])
}
aq2
#4
state.x77[order(state.x77[,"Population"]),]
sort(state.x77[,"Population"])
state.x77[order(state.x77[,"Income"], decreasing=T),]
head(sort(state.x77[,"Illiteracy"]), 10)
#5
mt.gear <- split(mtcars, mtcars$gear)
mt.gear

mt.gear$`4`
mt.gear$`3`
mt.gear$`5`

mt.gear.35 <-  data.frame(mt.gear$`3`, mt.gear$`5`)
mt.gear.35

mtcars[mtcars[,"wt"] <= 3.0 & mtcars[,"wt"] >= 1.5,]

library(mlbench)
data("Glass")
md <- Glass
agg <- aggregate(Glass[,c("RI","Na","Mg","Al","Si")], by=list(Glass$Type), mean)
agg
#7
data("Ionosphere")
md <- Ionosphere
md
str(md)
colnames(md)
result <- aggregate(md[,3:10], by=list(md$Class, md$V1), sd)
result
#8
mx <- nrow(state.x77)
idx <- sample(1:mx,20)
st.20 <- state.x77[idx,]
st.20
st.other <- state.x77[-idx,]
st.other
#9
iris.sub <- split(iris, iris$Species)
iris.sub
mx_set <- sample(1:nrow(iris.sub$setosa),10)
mx_ver <- sample(1:nrow(iris.sub$versicolor),10)
mx_vir <- sample(1:nrow(iris.sub$virginica),10)

iris.10 <- iris.sub$setosa[mx_set,]
iris.10 <- rbind(iris.10,iris.sub$versicolor[mx_ver,])
nrow(iris.10)
iris.10 <- rbind(iris.10,iris.sub$virginica[mx_vir,])
iris.10
nrow(iris.10)
#10
iris[sample(1:nrow(iris),150),]
#11
species <- unique(iris$Species)
species
combn(species, 2)
#12
combn(c("red","green","blue","black","yellow"),3)
#13
condi <- state.x77[,"Area"] > state.x77["Alabama","Area"] & state.x77[,"Area"] < state.x77["California","Area"]
state.x77[condi,c("Population","Income","Area")]
#14
print("I have no file(data set) to solve this problem")
#15
authors <- data.frame(
  surname = c("Twein", "Venables", "Tierney", "Ripley", "McNeil"),
  nationality = c("US","Australia", "US", "UK","Autralia"),
  retired = c("yes", rep("no", 4))
)
books <- data.frame(
  name= c("Johns", "Venables", "Tierney", "Ripley", "Ripley", "McNeil"),
  title = c("Exploratory Data Analysis",
            "Modern Applied Statistics",
            "LISP-STAT",
            "Spatial Sta",
            "Stochastic Sim",
            "Interactive DA"),
  other.author = c(NA, "Ripley", NA,NA, NA, NA)
)

merge(authors, books, by.x ='surname', by.y ='name')
merge(authors, books, by.x ='surname', by.y ='name', all.x = T)
merge(authors, books, by.x ='surname', by.y ='name', all.y = T)
merge(authors, books, by.x="surname",by.y="other.author")
