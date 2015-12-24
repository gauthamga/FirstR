# Intro to R Practice
ls()
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
y <- c(x, 0, x)
1/x
v <- 2*x + y + 1
lenght(x)
c(min(x), max(x))
range(x)
mean(x)
sum(x)/length(x)
var(x)
sum((x-mean(x))^2)/(length(x)-1)
sort(x)
pmax(x)
sqrt(-1)
sqrt(-1 + 0i)
1:30
2*1:10
n <- 10
# : high priority
1:n-1
1:(n-1)
seq(-5, 5)
seq(-5, 5, 2)
seq(-5, 5, length=10)
s5 <- rep(x, times=5)
s6 <- rep(x, each=5)
temp <- x > 13
temp <- !temp
is.na(x)
z <- c(1:3,NA);  ind <- is.na(z)
x == NA
z == NA
q <- rep(NA, times=5)
q == NA
is.na(q)
labs <- paste(c("X","Y"), 1:10, sep="")
y <- x[!is.na(x)]
y1 <- z[!is.na(z)]
(x+1)[(!is.na(x)) & x>0] -> y2
c("x","y")[rep(c(1,2,2,1), times=4)]
y3 <- x[-(1:3)]
fruit <- c(5, 10, 1, 20)
names(fruit) <- c("orange", "banana", "apple", "peach")
lunch <- fruit[c("apple","orange")]
q[is.na(q)] <- 0
mode(x)
mode(temp)
mode(z)
mode(w)
mode(labs)
digits <- as.character(z)
digi <- as.numeric(labs)
rm(digi)
z[3] <- 5
z[5] <- -5
z[7] <- NA 
#attr(z, "dim") <- c(5,5)
remove <- c(NA)
setdiff(z, remove)
a [! a %in% NA]
z [! z %in% NA]
z <- z[-4]
z <- z[which(z == remove.NA)]
z <- c(1:5)
z[4] <- NA
# Works at removing 2. z <- z[-which(z == 2)]
z <- z[!is.na(z)] # removing NA from vectors....
attr(z, "dim") <- c(2,2)
z[1][1] <- 10
z[1][3] <- 13
mode(z)
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt", "wa", "vic", "qld", "nsw","nsw", "wa", "sa", "act", "nsw", "vic", "vic", "act")
statef <- factor(state)
levels(statef)
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
summary(incomes)
incmeans <- tapply(incomes, statef, mean)
incmeans
stderr <- function(x) sqrt(var(x)/length(x))
incster1 <- tapply(incomes, statef, stderr)
incster2 <- tapply(incomes, statef, sd)
p <- array(1:20, dim=c(4,5))
q <- array(c(1:3,3:1), dim=c(3,2))
p[q]
p[q] <- 0
Xb <- matrix(0, n, b)
a <- dim(2,3)
dim(a) <- c(2,3)
a <- array(1:4, dim = c(2,3))
b <- array(2:3, dim = c(3,2))
ab1 <- outer(a, b, "+")
ab2 <- outer(b, a, "*")
# Determinant calculation
d <- outer(0:9, 0:9)
fr <- table(outer(d, d, "-"))
plot(as.numeric(names(fr)), fr, type="h", xlab="Determinant", ylab="Frequency")
-t(a)
t(a)
statefr <- table(statef) # ==== tapply(statef, statef, length)
factor(cut(incomes, breaks = 35+10*(0:7))) -> incomef
table(incomef,statef)
Lst <- list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9))
accountants <- data.frame(home=statef, loot=incomes, shot=incomef)
