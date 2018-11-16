a <- c("good","moderate","good")

z <- as.factor(a)

y <- factor(a,order=TRUE)

f <- c(1000:1025)
g <- c(50:100)
df <- as.data.frame(c(f,g))

colnames(df) <- c("Stolpci","stolpec2")


#1)
v <- c(1:100)

#2)
l <- list(1:10)

#3)
m <- matrix(1:50,10,5)

#4)
lis <- list("gd","asd","hhj","zut","hjgh")

#5)
d <- as.data.frame(lis)
colnames(d) <- c("a","b","c","d")

#Matrix.txt
#1)
x1 <- c(1:3)
y1 <- c(4:6)
z1 <- c(7:9)
mat <- cbind(x1,y1,z1)
row.names(mat) <- c("a","b","c")

#2)
is.matrix(mat)

#3)
matr <- matrix(c(1:12),nrow=4,ncol=3,T)
colnames(matr) <- c("x","y","z")
row.names(matr) <- c("a","b","c","d")

#-------------factors.txt------------
#1)
factor(c(1, 2, 3, 3, 5, 3, 2, 4, NA))
# [1] 1    2    3    3    5    3    2    4    <NA>
# Levels: 1 2 3 4 5

#2)
x <- c(11, 22, 47, 47, 11, 47, 11)
factor(x, levels=c(11, 22, 47), ordered=TRUE)
#[1] 11 22 47 47 11 47 11
#Levels: 11 < 22 < 47


#3)
z <- c("p", "a" , "g", "t", "b")
z[3] <- "b"
#[1] "p" "a" "b" "t" "b"

#4)
u <- factor(c("p", "q", "p", "r", "q"))
levels(u)[levels(u)=="p"] <- "w"


#5)
cs1 <- as.character(s1)
cs2 <- as.character(s2)
cc <- factor(c(cs1,cs2))

#6)
num <- iris$Sepal.Length
cut(num,5)

#7)
x <- data.frame(q=c(2, 4, 6), p=c("a", "b", "c"))
x[2] <- c("fertiliser1", "fertiliser2", "fertiliser3")

# Subsetting.txt

#1)
mtcars[,1][mtcars[,1]>15.0]

#2)
mtcars[,1][mtcars[,1]>=21]

#3)
mtcars[mtcars$cyl<6 & mtcars$gear==4,c(2,10)]

#4)
mtcars[mtcars$mpg>=21,1:4]

#5)
head(airquality[airquality$Ozone>28 | airquality$Temp > 70, 1:5],5)

#6)
head(airquality[airquality$Ozone>28 | airquality$Temp > 70,c(1,4)],5)

#7)
head(CO2[CO2$Treatment=="chilled" & CO2$uptake > 15,-c(4)],10)

#8)
airquality[airquality$Ozone > 100, c("Ozone","Temp","Month","Day")]

#---------- PerformanceAnalytics -------------
install.packages("PerformanceAnalytics")
df <- airquality[,1:4]
library(PerformanceAnalytics)
chart.Correlation(df,histogram = T,pch = "+")

#-----------LOOPS----------
i <- 1

repeat{
     i <- i+1
     if(i%%2==0){
         print(i)
     }
     if(i==10){
         break
     }
}

hflights::hflights$DayofMonth

select(hflights,UniqueCarrier,FlightNum,contains("Tail"),contains("Cancel"))

#------------FUNCTIONS--------

apply(airquality, 2,function(x) mean(x,na.rm = TRUE))

l <- list(a=1:10,b=3:17,c=30:35)

lapply(l,mean)

d <- sapply(l,mean)
class(d)

tapply(airquality$Temp, airquality$Month, mean)

lapply(mtcars, min)

mapply(min,mtcars)

sapply(mtcars, min)

lapply(mtcars, min)

listobjects <- list(mapply(min,mtcars),sapply(mtcars, min),lapply(mtcars, min))

mapply(class, listobjects)


isINT <- function(v,i) {a <- table(v) ; b <- a[names(a)==i] ; as.integer(b)}
isINT(c(1,2,3,1,2,1,2,3,4,5,1),1)

sq <- function(x) x*x

raise <- function(x,y=3) x+y

divisors <- function(x) {
  count <- 0
  if(x==1){count <- 0}
  else{for (i in c(2:(x-1))) {
    if(x%%i==0){count <- count +1}
  }}
  count
}





