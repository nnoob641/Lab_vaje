a <- c("good","moderate","good")

z <- as.factor(a)

y <- factor(a,order=TRUE)

f <- c(1000:1025)
g <- c(50:100)
df <- as.data.frame(c(f,g))

colnames(df) <- c("Stolpci","stolpec2")