## 데이터 입출력
age <- c(28,17,35,46,23,67,30,50)
age
class(age)
str(age)

min(age)
max(age)

cat('가장 젊은 나이는',min(age),'세 이고\n','가장 고령 나이는',max(age),'세 입니다')


## 화면에서 데이터 입력받기
user.input <- dlgInput('수입을 입력하세요')$res
user.input
income <- as.numeric(user.input)
income
tax <- income * 0.05
tax

10
100
1000
10000
100000

cat('세금',tax,'원')
#1e+4부터 출력을 10000로 변경하는 옵션
options(scipen = 1)

x <- 1
y <- 10
print(x) #print는 하나만 출력
cat(x,y)
print(iris[1:6,])
cat(iris[1:6,]) # Error - cat은 문자열 조합시만 사용

## LAB 체질량 지수 계산 1
height <- dlgInput('키를 입력하세요[cm]')$res
weight <- dlgInput('몸무게를 입력하세요')$res

height <- as.numeric(height)
weight <- as.numeric(weight)

height.res <- height / 100
bmi <- weight / (height.res^2)

cat('키', height, 'cm','몸무게', weight,'kg\n')
cat('체질량 지수', bmi,'입니다\n (25이상 과체중, 30이상 비만')

#숫자 천단위 콤마
install.packages('formattable')
library(formattable)

num.data <- c(1250000, 22500, 123.456, 123.444, 1789.34)
num.data
comma(num.data)

## 파일 입출력
getwd()
setwd("C:/STUDY/StudyR/day3")

# csv파일 읽기
air.quality <- read.csv('./airquality.csv', header = T)
air.quality
head(air.quality)
tail(air.quality)

str(air.quality)

setosa.iris <- subset(iris, Species=='setosa')
str(setosa.iris)
setosa.iris
# row.names # 행번호가 같이 저장 안됨
write.csv(setosa.iris, './setosa_iris.csv', row.names = F)

library(xlsx)
## 엑셀 읽고 쓰기
air.quality.xlsx <- read.xlsx('./airquality.xlsx', header = T, sheetIndex=1)


## LAB 다이아몬드 정보
library(ggplot2)
diamonds
str(diamonds)

levels(diamonds$cut)
levels(diamonds$color)
levels(diamonds$clarity)

diamonds.new <- subset(diamonds, cut=='Premium' & carat >= 2)
str(diamonds.new)

write.csv(diamonds.new, './day3//shiny_diamonds.csv', row.names = F)

## color가 D나 H가 아닌 나머지
diamonds.new.without.DH <- subset(diamonds.new, color != 'D'& color != 'H')
str(diamonds.new.without.DH)
write.csv(diamonds.new.without.DH, './day3//shiny_diamonds_without_DH.csv', row.names = F)

