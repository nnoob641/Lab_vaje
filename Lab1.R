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

#
