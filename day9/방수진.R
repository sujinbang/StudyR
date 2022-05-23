### 1번 문제
x <- c(1.0, 1.2,1.4,1.6,1.8,2.0,2.2,2.4,2.6,2.8,3.0)
x <- 1:11
x1 <-x[seq(1,3)]
rep(x1, time = 4)

### 2번 문제
max.temp <- c(22,27,26,24,23,26,28)
barplot(max.temp)

barplot(max.temp, 
        main = '주간 최대 기온',
        xlab = '섭씨',
        ylab = '요일',
        horiz = T,
        col = rainbow(7),
        names = c('월','화','수','목','금','토','일'), las=1)


### 3번 문제
trees
plot(x=trees$Girth, 
     y=trees$Volume,
     main = '나무 둘레-용적 산점도',
     xlab = '둘레',
     ylab = '용적',
     col = 'skyblue',
     pch=19)


### 4번 문제
# 화면 4분할
par(mfrow=c(2,2),mar=c(5,6,6,2))
# 색상
color.1 <- rep('#ABDADC',7)
color.1[1] <- '#1D3557'
color.2 <- rep('#ABDADC',5)
color.2[4] <- '#1D3557'
color.3 <- rep('#ABDADC',7)
color.3[6] <- '#1D3557'
color.4 <- rep('#ABDADC',5)
color.4[2] <- '#1D3557'

# 그래프
air <- airquality
hist(air$Ozone,
     main='오존분포', 
     col=color.1,
     xlab = '오존',
     ylab = 'Frequancy')

hist(air$Temp,
     main='기온분포', 
     col = color.2,
     xlab = '기온',
     ylab = 'Frequancy',
     breaks = 5)

hist(air$Solar.R,
     main='자외선분포', 
     col=color.3,
     xlab = '자외선',
     ylab = 'Frequancy')

hist(air$Wind,
     main='풍량분포', 
     col=color.4,
     xlab = '풍량',
     ylab = 'Frequancy',
     breaks = 5)

par(mfrow=c(1,1),mar=c(5,6,6,2))    #화면분할 해제


### 5번 문제
library(carData)
str(TitanicSurvival)  #데이터 확인
ds <- TitanicSurvival
ds <- ds[complete.cases(ds),] # 결측값 제거
str(ds)

tbl <- table(ds$survived, ds$passengerClass)
tbl <-tbl[c('yes','no'),]   # 행 정렬 변경
tbl

barplot(tbl, 
     main = '타이타닉 클래스별 생존자',
        col = c('#00FFFF','red'), 
        names = c('First','Second','Third'),
)

legend(x = 'topleft',
       legend = c('사망자','생존자'),
       fill=c('#00FFFF','red'),
       inset=c(0.1,0)
       )
       