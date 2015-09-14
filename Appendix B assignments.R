a<-2+3
a
b<-a+a
a+a; a+b
# scalar = a single real number
# vector = list (column or row) of objects, e.g. scalars, words, etc.
Y <- c(8.3, 8.6, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4)
# = is the same as <-
Y=c(8.3, 8.6, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4)
# sequences create an ordered list of numbers
1:4
4:1
-1:3
-(1:3)
# you can set the initial and final value and the amount by which the list changes in a sequence
seq(from = 1, to = 3, by = 0.2)
# creates a sequence from 1 to 3 in by an interval of 0.2 (above and below are the same)
seq(1,3,by=0.2)
# can also define the length of the sequence i.e. how many numbers are in the list
seq(1,3,length=7)
# to create repetitive sequences use rep(a,b) where a is the argument to be repeated and b is the number of times a gets repeated
rep(1,3)
# so 1 is a and 3 is b, i.e. the number 1 is repeated 3 times
rep(1:3,2)
# repeats the sequence 1:3, 2 times
# you can also repeat each number in the sequence b times
rep(1:3,each=2)
# consider the vector Y created above
sum(Y)
mean(Y)
max(Y)
length(Y)
summary(Y)
# length retrieves how many numbers are in the vector, summary provides a brief summary with 6 descriptors
# can create vectors with characters and logical values, and can name them by letters e.g. Y above or by names:
Names <- c("Sarah", "Yunluan")
Names
b<-c(TRUE, FALSE)
b
# vectors can be created with many different arguments, also including dates, complex numbers, factors, etc.
# R can retrieve the class of data the vectors belong to
class(Y)
class(b)
# you can test the logic of vectors using various operators e.g. <,>,<=,>=,==,!=
Y==11
Y>mean(Y)
# above I tested if the values of vector Y are equal to 11, and if the values of vector Y are greater than the mean of the vector Y
Y>10
# to test if a vector is "not equal to" use !=
Y != 11
# you can perform algebra on vectors i.e. +,-,*,/
a <- 1:3
b <- 4:6
a+b
a*b
a/b
a+1
a*2
1/a
a*1:2
# R will return a warning if you multiply a vector by a shorter vector (as above)
a*2:3
# however R will recycle the shorter vector as many times as it takes to match the length of the longer vector
# R will not return an error if the length of the vectors are multiples, e.g. if one vector has a length of 4 and the other a length of 2
1:4 * 1:2
# recycling makes the above the same as below
1:4 * c(1,2,1,2)
# you can retrieve values from a vector
Y[1]
Y[1:3]
# to retrieve which values of the vector are greater than the average
Y[Y > mean(Y)]
# The results are the only values which make the statement true
# Use NA to denote missing data
a <- c(5,3,6,NA)
a
# to test if the vector has NA data and if so which value in the argument
is.na(a)
!is.na(a)
a[!is.na(a)]
na.exclude(a)
# you can still operate on the vector with NA and can exclude the NA value from being operated on
mean(a)
mean(a, na.rm=TRUE)
d <- na.exclude(a)
mean(d)
# matrix = 2-dimensional set of values that are all the same type
matrix(letters[1:4], ncol=2)
M <- matrix(1:4, nrow=2)
M
# to change the order of the matrix and fill it in by rows first
M2 <- matrix(1:4, nrow=2, byrow=TRUE)
M2
# You can make a diagnoal matrix
I <- diag(1, nrow=2)
I
# matrices by default fill columns left to right
M[1,2]
M[1,1:2]
M[,2]
M[,]
# you can also perform algebra on matrices
N <- matrix(0:3, nrow=2)
N
M
M*N
# the above was scalar multiplication of matrices where the values in the same position are multiplied together
# below is matrix multiplication where if A <- matrix(a:d, nrow=2) and B <- matrix(m:p, nrow=2) then A*B = ((column 1: (am+bn) (cm+dn)) (column2: (ao+bp) (co+dp)))
M
N
M%*%N
# matrix multiplication ia not commutative i.e. MN does not equal NM
N%*%M
M%*%N == N%*%M
# you can also multiply a matrix by a vector
# a vector is really a 1-column matrix
1:2%*%M
M%*%1:2
V <- matrix(1:2, ncol=1) # this is the same thing as 1:2
M%*%V
M%*%V==M%*%1:2
try(V%*%M)
V%*%M

M+N
M+2
# transpose = switching the order of the matrix so columns become rows and vice versa
t(M)
# data frame = 2-dimensional table or data set that can contain different types of values, similar to a spreadsheet
dat <- data.frame(speacies = c("S.altissima", "S.rugosa", "E.graminifolia", "A.pilosus"), treatment = factor(c("Control", "Water", "Control", "Water")), height = c(1.1, 0.8, 0.9, 1), width = c(1.0, 1.7, 0.6, 0.2))
dat
dat[2,1]
dat[3,4]
dat[,2]=="Water"
dat[dat[,2]=="Water",]
subset(dat, treatment=="Water")
