setwd('C:/STUDY/StudyR/day8')

install.packages("data.table")
library(data.table)
install.packages("dplyr")
library(dplyr)
install.packages('ggplot2')
library(ggplot2)
install.packages("lubridate")
library(lubridate)
install.packages('stringr')
library(stringr)
install.packages('forecast')
library(forecast)
install.packages('randtests')
library(randtests)

load(file='./result_sales_dt.RData')
str(result_sales_dt)
unique(result_sales_dt$yyyyqrt)

glimpse(result_sales_dt, width=60)

# 쿼터별 매매량 계산
qrt_cnts <- result_sales_dt[,.N,yyyyqrt]
str(qrt_cnts)
head(qrt_cnts)
tail(qrt_cnts)
qrt_cnts <- result_sales_dt[yyyyqrt != '2015Q2',
                            .N,yyyyqrt]


ggplot(qrt_cnts, aes(x=yyyyqrt, y=N, group=1)) +
  geom_line() + xlab("년도분기")+ylab("매매건수") +
  theme(axis.text.x=element_text(angle=90)) +
  stat_smooth(method='lm')

region_cnts <- result_sales_dt[yyyyqrt != '2015Q2',.N,.(yyyyqrt,region)]
head(region_cnts)

ggplot(region_cnts,aes(x=yyyyqrt, y=N ,group=region)) +
  geom_line() + 
  facet_wrap(~region,scale='free_y',ncol=3) +
  stat_smooth(method = 'lm') +
  theme(axis.text.x = element_blank())



#시계열의 랜덤성 검정
region_cnts <- result_sales_dt[,.N,.(yyyymm,region)]           #월별 지역별 매매량
regions <- unique(region_cnts$region)                          #대표지역추출
region_cnts
regions

#각 지역별로 매매량의 랜덤성 검정 결과를 runs_p 변수에 추가
runs_p <- c()
for(reg in regions) {
  runs_p <- c(runs_p, runs.test(region_cnts[region %chin% reg,N])$p.value)
}
ggplot(data.table(regions, runs_p), 
       aes(x=regions, y=runs_p, group=1)) +
  geom_line() + geom_point() +
  ylab('P-value') + xlab('지역')

#서울지역
seoul_cnts <- result_sales_dt[yyyymm != '201504' & region %chin% '서울', .N, (yyyymm)]

head(seoul_cnts)
tot_ts <- ts(seoul_cnts$N, start = c(2006,1), frequency = 12)

tot_ts

plot(stl(tot_ts, s.window = 'periodic'))

arima_mdl <- auto.arima(tot_ts)
tsdiag(arima_mdl)

plot(forecast(arima_mdl,h=12))

#차량 연비
mpg <- as.data.frame(ggplot2::mpg)

library(dplyr)
mpg_diff <- mpg %>% #%>% 함수안에 넣겠다(ctrl+shift+m) 
  select(class, cty) %>%
  filter(class %in% c("compact", 'suv'))

head(mpg_diff)
table(mpg_diff$class)

mpg_diff

t.test(data = mpg_diff, cty ~ class, var.equal = T)


mpg_diff2 <- mpg %>%
  select(fl, cty) %>%
  filter(fl %in% c("r", "p")) # r:regular, p:premium
table(mpg_diff2$fl)


economics <- as.data.frame(ggplot2::economics)

cor.test(economics$unemploy, economics$pce)
head(mtcars)

car_cor <- cor(mtcars) # 상관행렬 생성
round(car_cor, 2) 


install.packages("corrplot")
library(corrplot)
corrplot(car_cor)
corrplot(car_cor, method = "number")


