## 함수
y <- sqrt(x-100)
y

y <- c(1,7,4,2,3,NA)
y
sort(y)
sort(x=y)
sort(x=y, decreasing=T)
sort(x=y, decreasing=T, na.last = F)

sort()

# 문자열 붙이기 함수
paste('Hello','world','!', 'This', 'is','R')
paste('Hello','world','!', sep = '/', recycle0 = F)

a <- '나의 나이는'
b <- 20
c <- '입니다'
paste(a,b,c)

a <- 1:12
b <- '월'
c <- paste(a, b, sep='')
c

## 월별 매출액 분석
sales <- c(750,740,760,680,700,710,850,890,700,720,690,730)
names(sales) <- paste(1:12, '월', sep='')
sales

sales['7월']
sales['1월'] + sales['2월']
max.sales.month<-sort(sales, decreasing = T)
max.sales.month[1]

sum(sales[1:6])
sum(sales[7:12])


