# 매트릭스와 데이터 프레임
z <-  matrix(1:20, nrow=4, ncol=5)
z
z2 <-  matrix(1:20, nrow=4, ncol=5, byrow = T)
z2

z
z[1,3] # [row,column]
z[3,4]
z[4,5]
z

z2[3, 1]
z

x <- 1:4
y <- 5:8
x
y
z3<-matrix(1:20, nrow=4, ncol=5, byrow = T)
z3

m1<-cbind(x,y)
m1
m2 <- rbind(x,y)
m2

m3 <- rbind('m2,x')
m3.1 <- rbind(x)
m3

cbind(m2,x)
m2
z
m4 <- cbind(z, x)
m4
cbind(z,x)
x
z
z[2,]
z[,3]
