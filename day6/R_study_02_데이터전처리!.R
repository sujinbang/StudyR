## 데이터 전처리
z <- c(1,2,3,NA,5,NA,7,8,9,10)
z
summary(z)
sum(z)
min(z)
max(z)
mean(z)
median(z)
sd(z)
var(z)

is.na(z)  #결측값 확인
sum(is.na(z))
sum(c(T,T,F))
sum(z, na.rm=T)

# 결측값 제거/대체
z1 <- c(1,2,3,NA,5,NA,7)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0
z3 <- as.vector(na.omit(z2))
z4 <-z1
z4
z4[is.na(z4)] <- ceiling(sum(z4, na.rm = T ) / length(z4))


summary(z4)  # NA 들어간 벡터
summary(c(1,2,3,4,5,6,7))
summary(z1) # 0들어간 벡터

## 2차원 결측값
iris.na <-iris
iris.na[1,2] <-NA
iris.na[1,3] <-NA
iris.na[2,3] <-NA
iris.na[3,4] <-NA
head(iris.na)

## 결측값 확인 (열별)
for (i in 1:ncol(iris.na)){
  this.na <- is.na(iris.na[,i])
  cat(colnames(iris.na)[i],'\t', sum(this.na),'\n')
}

## apply합수
col_na <- function(y){
  return(sum(is.na(y)))
}
na_count <- apply(iris.na, 2, FUN=col_na)
na_count

## 결측값 확인 (행별)
result <- rowSums(is.na(iris.na))
sum(result > 0)
sum(is.na(iris.na))

## 매트릭스 NA 제외 전처리
head(iris.na)
iris.na[complete.cases(iris.na),]   # NA가 없는 걸 표시

iris.na[complete.cases(iris.na) == F,]
iris.na[!complete.cases(iris.na),]

iris.comp <- iris.na[complete.cases(iris.na),]
View(iris.comp)

## LAB 전세계 통계데이터
library(carData)
str(UN)
levels(UN$region)
levels(UN$group)

col_na
apply(UN, 2, FUN = col_na)
length(UN$region)
mean(UN$lifeExpF, na.rm = T)

tmp <- UN[,c('pctUrban','infantMortality')]
tmp <- tmp[complete.cases(tmp),]
tmp
colMeans(tmp)
length(tmp$pctUrban)

mean(tmp$pctUrban)

tmp.asia <- subset(UN, region=='Asia')
mean(tmp.asia$fertility)



## 정렬
v1 <- c(1,7,6,8,4,2,3,9)
sort(v1, decreasing = T)

name <- c('정대일','강재구','신현석','홍길동')
sort(name, decreasing = T)[1]

idx <- order(name,decreasing = T)
idx
name[idx[1]]

a <- c(1,2,3,4,5)
b <- c(11,24,55,23,9)
z <- rbind(a,b)
str(z)
colnames(z) <- c('C1', 'C2', 'C3', 'C4', 'C5')
z[,1]


## 데이터 프레임 정렬
iris
sort(iris$Sepal.Length)

sl.order <- order(iris$Sepal.Length)
iris[sl.order,]
iris.new <- iris[sl.order,]
iris.ag <- iris[order(iris$Species,
                      iris$Petal.Length,
                      decreasing = T),]

## LAB 고속도로 교통사고 데이터
library(carData)
str(Highway1)
levels(Highway1$htype)

tmp <- Highway1[order(Highway1$len, decreasing = T), 'len']
tmp
sum(tmp[1:10])

tmp.2 <- sort(Highway1$len, decreasing = T)
tmp.2
sum(tmp.2[1:10])

tmp <- Highway1[order(Highway1$adt),c('adt', 'rate')]
tmp
tmp[1:10,]

tmp <- Highway1[order(Highway1$slim, decreasing = T),
                c('len','adt','rate')]
tmp
tmp[1:5,]
