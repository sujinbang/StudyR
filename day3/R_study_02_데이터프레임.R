## 데이터 프레임 : 숫자형 자료와 문자형 자료가 결합된 형태
physicals <- matrix(c(168.4,169.5,62.4,65.5,'M','F'), nrow=2) # 숫자에 문자열 형태의 값이 들어갈 때 모든 자료가 문자형으로 변환
physicals

city <- c('Seoul','Tokyo','Washington')
rank <- c(1,3,2)
city.info <- data.frame(city,rank)
city.info

##iris 데이터셋
iris
head(iris)
tail(iris)
str(iris) # 데이터의 유형이 무엇인지 알려주는 함수 str()
z
str(z)
str(burger)
str(x)
str(c('John', 'Tom', 'Mark', 'Jane'))

iris[140,]
iris[,5]
levels(iris[,5])
iris[,c(1,2)]
iris[,c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Species')]

head(iris[,c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Species')])
tail(iris[,c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Species')])

head(iris[,c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width', 'Species')])[1,3]


## LAB2 햄버거 영양정보2
kcal<-c(514,533,566)
na <- c(917,853,888)
fat <- c(11,13,10)
menu <- c('새우버거','불고기버거','치킨버거')
burger.2 <- data.frame(kcal,na,fat,menu)
burger.2

rownames(burger.2) <- c('맥도날드','롯데리아','버거킹')
burger.2

burger.sum <- burger.2[,'na'] * burger.2[,'fat']
burger.sum

burger.2['맥도날드',]

##
dim(iris) #dimension
dim(x)
dim(burger)
dim(burger.2)

nrow(iris)
ncol(iris)
colnames(iris)
colnames(burger.2)
rownames(burger.2)
rownames(iris)

head(iris, n = 2) #첫번째값 확인, n값은 개수
tail(iris) #마지막값 확인

iris$Sepal.Length
levels(iris$Species)
levels(iris[,'Species'])

# 행별, 열별 합계, 평균 산술계산
colSums(iris[,-5])
colSums(iris[,'Species']) # Error

colSums(iris[,c(1,2)]) # 최소 2개 이상의 열이 선택되어야함
colMeans(iris[,-5])
head(iris)
rowSums(iris[,-5])
rowMeans(iris[,-5])

z <- matrix(1:20, nrow=4)#, ncol=5) # nrow,ncol을 다 적지 않아도 됨
z
t(z) # 행열변환
str(burger.2)
str(t(burger.2)) # 데이터프레임을 t로 행열 변환 시 데이터프레임이 아니게됨

iris.subset.1 <- subset(iris, Species=='setosa')
iris.subset.1

iris.subset.2 <- subset(iris, Sepal.Length >= 5.0 & Sepal.Width >= 3.0)
iris.subset.2
str(iris.subset.2)

iris.subset.2$Sepal.Length

iris.subset.2[3:5]
iris.subset.2[c(1,2,5)]

a <- matrix(1:20, 4,5) # matrix(,row,col)
b <- matrix(21:40,4,5)
a + b
a * b

a.2 <- a * 2
a
a.2

iris.subset.2

class(iris) # "data.frame"
str(iris)
class(z) # "matrix" "array" 
str(z)

is.matrix(iris) #FALSE
is.matrix(z)
is.data.frame(iris)

# LAB 벚나무 판매
trees
class(trees)
str(trees)

## 화원 나무 직경 평균
girth.mean <- mean(trees[,1])
girth.mean
girth.mean2 <- mean(trees$Girth)
girth.mean2

candidate <- subset(trees, Girth >= girth.mean & Height >= 80 & Volume >= 50)
candidate
nrow(candidate)

# 종업원 팁계산
install.packages('reshape2')
library(reshape2)
tips

is.matrix(tips)
is.array(tips)
is.data.frame(tips)
class(tips)
str(tips)
levels(tips$day)

head(tips)
tail(tips)

table(tips$day)
str(table(tips$day))

dinner <- subset(tips, time=='Dinner')
dinner
lunch <- subset(tips, time=='Lunch')
lunch
table(dinner$day)
table(lunch$day)

head(dinner)
dinner.data <- dinner[c('total_bill','tip','size')]
lunch.data <- lunch[c('total_bill','tip','size')]

str(dinner.data)
str(lunch.data)

colSums(dinner.data)
colMeans(dinner.data)
colSums(lunch.data)
colMeans(lunch.data)

tips.rate <- tips$tip/tips$total_bill
tips.rate
mean(tips.rate) * 100


