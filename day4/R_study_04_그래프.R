## 기본 그래프
favorite.season <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL','FALL','SUMMER','SPRING','SPRING','SUMMER','SUMMER')
favorite.season
f.season <- table(favorite.season)
str(f.season)
f.season

barplot(f.season, main = '좋아하는 계절')
barplot(f.season, main = '좋아하는 계절', col = rainbow(4),xla='계절', ylab = '빈도수', horiz = F, names = c('가을','봄','여름','겨울'),las = 1)


## 중첩 막대 그래프
# 데이터 입력
age.A <- c(13709,10974,7979,5000,4250)
age.B <- c(17540,29701,36209,33947,24487)
age.C <- c(991,2195,5366,12980,19007)
ds <- rbind(age.A,age.B,age.C)

str(ds)
ds

colnames(ds) <- c('1970','1990','2010','2030','2050')
ds

par(mfrow=c(1,1), mar=c(3,3,3,7))

barplot(ds, main = '인구수 추정', col = rainbow(3), horiz = F, beside = F, legend.text = c('0~14세', '15~64세', '65세 이상'), args.legend = list(x='topright', bty='y', inset=c(-0.22,0.1)))


## LAB 사업 부문별 매출액 그래프
ha <- c(54659, 61028, 53307, 46161, 54180)
he <- c(31215, 29863, 32098, 39684, 29707)
mc <- c(15104, 16133, 15222, 13208, 9986)
vs <- c(13470, 14231, 13401, 13552, 13193)
bs <- c(16513, 14947, 15112, 14392, 17091)
ds <- rbind(ha, he, mc, vs, bs)
ds
colnames(ds) <- c('19.1Q', '19.2Q', '19.3Q', '19.4Q', '20.1Q')

par(mfrow=c(1,1), mar=c(4.5,4,3,3)) #plot 여백 조정정
barplot(ds, main = '사업부문별 매출액(분기)',
        col = rainbow(5), horiz = T, las = 1, xlab = '억원', beside = T, legend.text = c('H&A', 'HE', 'MC', 'VS', 'BS'), args.legend = list(x='topright', bty = 'n', inset=c(-0.2,0)))


## 히스토그램
par(mfrow=c(1,1), mar=c(4.4,4,4,4))
dist <- cars[,2]
str(dist)
hist(dist, # data
     main='Histogram for 제동거리', # 제목
     xlab ='제동거리', # x축 레이블
     ylab='빈도수', # y축 레이블
     border='blue', # 막대 테두리색
     col='skyblue', # 막대 색
     las=1, # x축 글씨 방향(0~3)
     breaks=10) # 막대 개수 조절

## LAB 다이아몬드 시세
library(Stat2Data)
data(Diamonds)
ds <- Diamonds$PricePerCt

color <- rep('#a8dadc', 9)
color[3] <- '#1d3557'

hist(ds, main = '다이아몬드 시세(캐럿당)',
     breaks = 9,
     xlab = '캐럿당 가격($)',
     ylab = '빈도수',
     las = 1,
     col = color,
     border = '#457b9d')

