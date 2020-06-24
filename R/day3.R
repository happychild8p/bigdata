job.type <- "A"
if(job.type == "B"){
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)
score <- 70
score2 <- 95
if(score > 90 & score2 > 90){
  grade <- "A"
} else if(score > 80 & score2 > 80){
  grade <- "B"
} else if(score > 70 & score2 > 70){
  grade <-"C"
} else if (score >90 | score2 > 90){
  grade <- "C+"
} else{
  print("Fuck you")
}
grade

ifelse(score>score2,score,score2)
sum <-0
for (i in 1:10){
  sum <- sum + i
  if(i == 10){
    print(sum)
  }
}

for(base in 2:9){
  for(i in 1:9){
    cat(base," * ",i," = ",base*i,"\n")
  }
  cat("\n")
}

for (base in 2:9){
  for (i in 1:9){
    if(i == 1 | i == 4 | i == 7 | i == 8 ){
      next
    } else{
      cat(base," * ",i," = ",base*i,"\n")
    }
  }
  cat("\n")
}

sum <- 0
# for (i in 1:100){
#   if (i in c(1:30) | i in seq(50,100,2))) {
#     sum <- sum + i
#   }
# }
# print(sum)

for (i in 1:50){
  if (i %% 3 ==0){
    sum <- sum + i
  }
}
print(sum)

myLabel <- c()
for(i in 1:length(iris$Petal.Length)){
  if(iris$Petal.Length[i] > 5.1){
    myLabel[i] <- "H"
  } else if(iris$Petal.Length[i] > 1.6){
    myLabel[i] <- "M"
  } else {
    myLabel[i] <- "L"
  }
}
print(myLabel)
myiris <- data.frame(iris, myLabel)
myiris
head(myiris)

iris
nrow(iris)
leng.label <- rep(0, nrow(iris))
leng.label

leng.label[iris$Petal.Length > 1.6] = "M"
leng.label[iris$Petal.Length > 5.1] = "H"
leng.label[iris$Petal.Length < 1.6] = "L"
vec.iris <- data.frame(iris, leng.label)
vec.iris
head(vec.iris)

sum <- 0
i <- 0
while(i <= 100){
  i <- i + 1
  if (i %% 4 == 0){
    next
  } else{
    sum <- sum + i
  }
}
print(sum)
i <- 10
while(TRUE){
  i <- i + 1
  print(i)
  if (i == 100){
    break
  }
}
niris <- iris[,-5]
apply(niris,1,mean)
apply(niris,2,mean)

apply(niris,1,median)
apply(niris,2,median)
apply(niris,1,sum)
apply(niris,2,sum)
apply(niris,1,range)
apply(niris,2,range)
apply(niris,2,min)
apply(niris,2,max)

score <- c(76,84,69,50,95,60,82,71,88,84)
which(score==69)
which(score >=85)
which.max(score)
which.min(score)
trash <- which(score <= 60)
trash
score[trash] = 0
score

idx <- which(iris$Petal.Length > 5.0)
idx
biris <- iris[idx,]
biris

idx2 <- which(iris[,1:4] > 5.0, arr.ind = T)
idx2

sum <- 0; count <-0
for(i in 1:100){
  if(i %%3 == 0){
    sum <- sum + i
    count <- count + 1
  }
}
print(sum)
print(count)

for(i in 101:200) {
  if (i %% 3 == 0 & i %% 4 == 0){
    print(i)
  }
}
for(i in 1:24){
  if(24 %% i == 0){
    print(i)
  }
}

fac <- 1
for(i in 10:1){
  fac <- fac * i
}
print(fac)

for(i in 1:9){
  cat("9 * ",i," = ", 9*i,"\n")
}

i <- 1
while(i <= 9){
  cat("8 * ",i," = ", 8*i,"\n")
  i <- i + 1
}

for(i in 1:100){
  if(i %% 3 == 0){
    cat("*")
  } else {
    cat(i)
  }
}

primes <- c(2)
for(i in 2:1000){
  c <- 0
  for(j in 2:i-1){
    if(i%%j != 0){
      c <- c + 1 
    }
    if (i%%j != 0 & c==i-2){
      primes <- c(primes, i)
    }
  }
}
print(primes)

piv <- c(0, 1)
for(i in 3:40){
  piv[i] <- piv[i-2] + piv[i-1]
}
piv

apply(iris[,-5],1,sum)
apply(iris[,-5],2,sum)

apply(mtcars,2,sum)
apply(mtcars,2,max)
apply(mtcars,2,sd)

lgm <- function(a,b){
  common_measure <- c()
  num = max(c(a,b))
  for (i in 1:num){
    if(a%%i ==0 & b%%i ==0){
      common_measure <- c(common_measure, i)
    }
  }
  return (max(common_measure))
}

result <- lgm(10,8)
result
result <- lgm(10,20)
result
result <- lgm(640,1280)
result

maxmin <- function(vector){
  return(list("min"=min(vector), "max"=max(vector)))
}
v1 <- c(7,1,2,8,9)
result <- maxmin(v1)
result
result$min
result$max

result <- maxmin(iris[,1])
result
result$min
result$max

weight <- c(69,50,55,71,89,64,59,70,71,80)
which.max(weight)
which.min(weight)
which(weight >= 61 & weight <= 69)
weight2 <- which(weight <= 60)
weight2

iris
which.max(iris$Petal.Length)
which(iris$Petal.Width >= 0.3 & iris$Petal.Width <= 0.4)

state.x77[,"Income"]
sub <- subset(state.x77, state.x77[,"Income"] >= 5000)
sub
sub[,c("Income", "Population","Area")]
