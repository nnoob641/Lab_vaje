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


