## 그래프2
# 원그래프(Pie Chart)
favorite.season
ds <- table(favorite.season)
ds
pie(ds, main='선호게절', radius = 1, col= rainbow(4))

# 원그래프2
install.packages('plotrix')
library(plotrix)
pie3D(ds, main='선호계절',
      labels = names(ds),
      labelcol = 'black',
      labelcex=1.0,
      explode=0.1,
      radius = 1.5,
      col = c('khaki','pink','skyblue','white'))


# 선그래프
month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month, # x data
     late,  # y data
     main = '지각생 통계',
     type = 'o',
     lty = 1, #선 종류
     lwd = 2, #선의 굵기
     xlab = '월',
     ylab = '지각생 수')

# 선그래프 2개 이상
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month, # x data
     late2,  # y data
     main = '지각생 통계',
     type = 'b',
     lty = 1, #선 종류
     lwd = 1, #선의 굵기
     xlab = '월',
     ylab = '지각생 수',col='blue')
lines(month, late1, type='o', col='red')

## LAB
install.packages('DAAG')
library(DAAG)

ds <- table(science$like)
pie(ds, main='선호 점수별 비율',
    col=rainbow(length(ds)), # 파이의 색 지정
    radius=1)

install.packages('plotrix')
library(plotrix)
ds <- table(science$State)
pie3D(ds, main='주별 학생 비율',
      labels=names(ds), # 파이별 레이블 지정
      labelcex=1.0, # 레이블의 폰트 크기
      explode=0.1, # 파이 간 간격
      radius=1.5, # 파이의 크기
      col=c('brown','green'))
year = 1875:1972
ds <- data.frame(year, LakeHuron)
plot(ds$year, # x data
     ds$LakeHuron, # y data
     main='수위 변화',
     type='b',
     lty=1,
     col='blue',
     xlab='연도',
     ylab='수위')

## 산점도
wt <- mtcars$wt # 중량 데이터
mpg <- mtcars$mpg # 연비 데이터
plot(wt, mpg, # 2개 변수(x축, y축)
     main='중량-연비 그래프', # 제목
     xlab='중량', # x축 레이블
     ylab='연비(MPG)', # y축 레이블
     col='red', # point의 color
     pch=19)

str(mtcars)

#아래의 세가지 산점도 다 동일
plot(mtcars$wt, mtcars$mpg)
plot(mtcars[,c('wt','mpg')])
plot(mpg-wt, data-mtcars)

vars <- c('mpg', 'disp', 'drat', 'wt')
target <- mtcars[vars]
plot(target, main='다중 산점도')

## IRIS
iris
iris.2 <- iris[,3:4]
levels(iris$species)
group <- as.numeric(iris$Species)
group
color <- c('red','green','blue')
plot(iris.2,
     main='붓꽃 꽃잎길이-넓이 산점도',
     pch=(group),
     col=color[group], xlab = '꽃잎길이',
     ylab = '꽃잎 넓이', las=1)

legend(x='bottomright',
       legend = levels(iris$Species),
       col = c('red','green','blue'),
       pch=(1:3))

## LAB 자동차 썬팅 분석
library(DAAG)
str(tinting)
plot(tinting$it, tinting$csoa)

group <- as.numeric(tinting$tint)
levels(group)
color <- c('red', 'green', 'blue')
plot(tinting[,c('it','csoa')], tinting$csoa, col = color[group],
     pch=group)

group <- as.numeric(tinting$agegp)    
group     
plot(tinting$it, tinting$csoa, col=color[group],
     pch=group)

## 호주의 사회 복지 서비스와 만족도
library(DAAG)
str(socsupport)

library(plotrix)
ds <- table(socsupport$age)
pie3D(ds, main='연령분포', labels=names(ds),
      labelcex = 1.0, radius=1.5, explode = 0.1,
      col = rainbow(length(ds)))

group <- as.numeric(socsupport$gender)
color <- c('blue','red')
plot(socsupport[,c('emotionalsat','tangiblesat','age')],
     pch=group, col=color[group])



