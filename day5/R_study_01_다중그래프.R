## 다중그래프
par(mfrow=c(2,2),mar=c(3,3,4,2)) # 화면 분할 2*2

hist(iris$Sepal.Length,
     main='붓꽃 꽃받침길이', col='orange') #히스토그램

barplot(table(mtcars$cyl), main = '자동차 실린더',
         col = c('red','green','blue'))

barplot(table(mtcars$gear), main = '자동차 기어수',
        col = rainbow(3), horiz = T)

pie(table(mtcars$cyl), main = '자동차 실린더',
    col = topo.colors(3),radius = 1)

par(mfrow=c(1,1),mar=c(5,4,4,2)+.1) #화면복귀
par(mfrow=c(1,1))

## LAB
install.packages('carData')
library(carData)
ds <- Chile
colors <- rainbow(20)
colors

par(mfrow=c(2,3), mar=c(3,3,4,2))
ds_gender <- table(ds$sex)
ds_region <- table(ds$region) 
ds_edu <- table(ds$education)
# table : 2700 행 (C,M,N,S,SA) 취합 후 하나의 테이블로 생성
barplot(ds_region, main = '지역별 분포', col = colors[1:5])
barplot(ds_gender, main = '성별 분포', col = colors[5:6])
barplot(ds_edu, main = '교육수준별 분포', col = colors[7:9])

hist(ds$age, breaks = 6, main = '연령별', xlab='ages',
     col = colors[10:15])

hist(ds$income, breaks = 4, main = '수입별', col = colors[15:18])
hist(ds$statusquo, breaks = 9, main = '지지도', col = colors[11:19])
par(mfrow=c(1,1))


## 종업원 팁 정보 그래프
library(reshape2)
str(tips)

#색상
color.6 <- rep('#ABDADC',6)
color.6[2] <- '#1D3557'
color.4 <- rep('#ABDADC',4)
color.4[3] <- '#45789D'
color.2 <- c('#ABDADC','#1D3557')
color.2[2]

par(mfrow = c(2,2))
barplot(table(tips$sex), main = '성별', col=color.2)
barplot(table(tips$day), main = '요일별별', col=color.4)
barplot(table(tips$time), main='시간대별', col=c(color.2[2],color.2[1]))
barplot(table(tips$size), main = '인원수별', col=color.6)
par(mfrow = c(1,1))

tips.new <- tips
tips.new$perHead <- tips.new$total_bill/tips.new$size

##1행 3열로 1인당 주문금액별 차트
color.5 <- rep('#ABDADC',5)
color.5[2] <- '#1D3557'

lunch.perHead <- tips.new[tips.new$time=='Lunch','perHead'] # 히스토그램은 벡터값으로
dinner.perHead <- tips.new[tips.new$time=='Dinner','perHead']

par(mfrow = c(1,3), mar = c(5,4,4,2)+.1)
hist(tips.new$perHead, breaks = 5, main = '1인당 주문액',
     xlab = '단위:$', ylab = '빈도수', las = 2, col=color.5)

hist(lunch.perHead, breaks = 4, main='1인당 주문액(점심)',
     xlab = '단위:$', ylab = '빈도수', las = 2, col=color.5)

hist(dinner.perHead, breaks = 4, main='1인당 주문액(저녁)',
     xlab = '단위:$', ylab = '빈도수', las = 2, col=color.5)

par(mfrow=c(1,1))


## 주문금액 대비 팁의 비율
tips.new$percent <- (tips.new$tip / tips.new$total_bill) * 100

par(mfrow=c(1,2))
res.lunch <- hist(tips.new[tips.new$time == 'Lunch', 'percent'],
                  main = '주문액 대비 팁비율(점심)',
                  xlab = 'per(%)', breaks = 5)
res.dinner <- hist(tips.new[tips.new$time == 'Dinner', 'percent'],
                  main = '주문액 대비 팁비율(저녁)',
                  xlab = 'per(%)', breaks = 5)

par(mfrow=c(1,1))


res.lunch$counts
res.dinner$counts[1:6]                  

res <- rbind(lunch = c(0, res.lunch$counts),
      dinner = res.dinner$counts[1:6])

res
colnames(res) <- res.dinner$breaks[2:7]
str(res)

barplot(res, main='식사시간에 따른 팀비율 분포',
        col=color.2, legend.text = c('Lunch', 'Dinner'), las = 1)



