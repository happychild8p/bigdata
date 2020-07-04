library(treemap)
data(GNI2014)
head(GNI2014)
str(GNI2014)
treemap(GNI2014, index=c("continent","iso3"), vSize="population", vColor="GNI", type="value",
        bg.labels="yellow", title="World's GNI")

library(treemap)
st <- data.frame(state.x77)
st <- data.frame(st, stname=rownames(st))
st

treemap(st, index="stname", vSize="Area", vColor="Income", type="value", 
        title="USA states and income")

st <- data.frame(state.x77)
st$Illiteracy
st$Murder
plot(st$Illiteracy~st$Murder)
cor(st$Illiteracy, st$Murder)
x <- lm(st$Illiteracy~st$Murder)
abline(x)

symbols(st$Illiteracy, st$Murder, circles=st$Population, inches=0.4, fg="grey",
        bg="lightgrey", lwd=1.5, xlab="Illiteracy Rate", ylab="Crime(Murder) Rate"
        , main="Illiteracy and Crime per State")
text(st$Illiteracy, st$Murder, rownames(st), cex=0.6, col="brown")

d <- data.frame(UCBAdmissions)
head(d)
mosaicplot(~d$Gender+d$Admit)
help("mosaicplot")

head(mtcars)
mosaicplot(~mtcars$gear+mtcars$vs, color=c("darkgreen","blue"), main="Gear and Vs", xlab="# of gears", ylab="# of vs"
          )
class(mtcars)
tbl <- table(mtcars$gear, mtcars$vs)
tbl
class(tbl)
mosaicplot(tbl, color=T, main="Gear and Vs")

library(ggplot2)

mon <- 1:12
rain <- c(55,50,45,50,50,60,70,99,90,10,10,40)
df <- data.frame(mon, rain)
df

ggplot(df, aes(x=mon, y=rain)) +
  geom_bar(stat="identity", width= 0.7, fill="darkgreen")

ggplot(df, aes(x=mon, y=rain)) +
  geom_bar(stat="identity", width= 0.7, fill="steelblue") +
  ggtitle("Monthly Probability of Rain") +
  theme(plot.title = element_text(size=25, face="bold", color="Steelblue")) +
  labs(x="Month", y="Probability") +
  coord_flip()

ggplot(iris, aes(x=iris$Petal.Length)) +
  geom_histogram(binwidth=0.3)

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth=0.5)

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth=0.5, position = "dodge") +
  theme(legend.position="top") +
  labs(x="Width of Speals", y="Count")

pairs(iris)

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width)) +
  geom_point()

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width, color=Species, shape=Species)) +
  geom_point() +
  ggtitle("Petal's length and width") +
  theme(plot.title = element_text(size=25, face="bold", color="Steelblue"))

ggplot(data=iris, aes(y=Petal.Length)) +
  geom_boxplot(fill="darkGreen")

ggplot(data=iris, aes(y=Petal.Length, x= Species, color=Species)) +
  geom_boxplot(fill = "yellow")

y <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(y,cnt)
head(df)

ggplot(data=df, aes(x=y, y=cnt)) +
  geom_line(col="red")

library(Rtsne)

ds <- iris[,-5]
ds
dup <- which(duplicated(ds))
dup
ds <- ds[-dup,]
ds.y <- iris$Species[-dup]
ds.y
tsne <- Rtsne(ds,dims=2, perplexity=10)
tsne
head(tsne,10)
str(tsne)

df.tsne <- data.frame(tsne$Y)
df.tsne
head(df.tsne)

ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y)) +
  geom_point(size=2)
  

# install.packages("car")
# library("car")
# library("rgl")
# library("mgcv")
# 
# tsne <- Rtsne(ds, dims=3, perplexity=10)
# df.tsne <- data.frame(tsne$Y)
# df.tsne
# 
# scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3)
# points <- as.integer(ds.y)
# color <- c('red','green','blue')
# scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3,
#           point.col=color[points],
#           surface=F)

us <- data.frame(state.x77, state.division)
us
colnames(us)


#CP10

Sys.setenv(JAVA_HOME="PATH to the directory")
library(wordcloud)
library(KoNLP)
library(RColorBrewer)

setwd("Path that we want to work on")
text <- readLines("textfile_separatedwithenter", encoding="UTF-8")
buildDictionary(ext_dic = "woorimalsam")

pal2 <- brewer.pal(8, "dark2")
noun <- sapply(text,extractNoun, USE.NAMES=F)
noun

noun2 <- unlist(noun)
wordcount <- table(noun2)
temp <- sort(wordcount, decreasing)[1:20]
temp
temp <- temp[-1]
barplot(temp, names.arg = names(temp), col="lightblue",
        main="qq", ylab="ww")
wordcloud(names(wordcount),
          freq=wordcount,
          scale=c(6,0.7),
          min.freq=3,
          random.order=F,
          rot.per=.1,
          colors=pal2)

buildDictionary(ext_dic = "woorimalsam",
                user_dic=data.frame("Govern","ncn"),
                replace_usr_dic=T)
noun <- sapply(text.extractNoun, USE.NAMES = F)
noun2 <- unlist(noun)
noun2 <- nount[nchar(noun2) > 1]
noun2 <- gsub("Patt","",noun2)
noun2 <- gsub("Patt2","",noun2)
wordcount <- table(noun2)

wordcloud(names(wordcount), freq=wordcount,
          scale=c(6,0.7),min.freq = 5,
          random.order=F, rot.per=1, colors=pal2)


















