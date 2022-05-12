## 팩터와 리스트
bt <- c('A','B','B','O','AB','A')
bt
bt.new <- factor(bt) 
bt.new  # levels : 집합, 중복값 제거
bt[5]
bt.new[6]
levels(bt.new)
as.integer(bt.new)

levels(bt.new)[4]

bt.new[7] <- 'B'
bt.new
bt.new[8] <- 'C' # NA생성 -> levels에 정의되지 않은 정보는 입력 x
bt.new[8]
bt.new[9] #값이 없음
bt.new


#리스트
h.list <- c('balling','tennis','ski') # 벡터형
person <- list(name = 'Tom', age=25, student=T, hobby=h.list) #R의 리스트는 파이썬의 딕셔너리와 동일
person

person[1]
person[['name']]
person$name
person$hobby
person$hobby[1]

person[[4]]
person[[4]][2]

# R카페 매출 분석 2
cafe <- list(espresso = c(4,5,3,6,5,4,7),
            americano = c(63,68,64,68,72,89,94),
            latte = c(61,70,59,71,71,92,88),
            price = c(2000,2500,3000),
            menu = c('espresso','americano','latte'))

cafe
cafe$menu <- factor(cafe$menu)
cafe$menu

names(cafe$price) <- cafe$menu
cafe$price

sale.espresso <- cafe$espresso * cafe$price[1]
sale.espresso <- cafe$espresso * cafe$price['espresso']
sale.espresso

sale.americano <- cafe$americano * cafe$price['americano']
sale.americano

sale.latte <- cafe$latte * cafe$price['latte']
sale.latte

sale.day <- sale.espresso + sale.americano + sale.latte
sale.day

sale.total <- sum(sale.day)
sale.total

sale.mean.new <- mean(sale.day)
sale.mean.new

names(sale.day) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
sale.day

names(sale.day[sale.day >= sale.mean.new])


#월별 감전 사고 통계
accident <- c(31,26,42,47,50,54,70,66,43,32,32,22)
mon <- 1:12
mon.name <- paste(mon, 'M', sep='')
mon.name
names(accident) <- mon.name
accident

sum(accident)     
max(accident)
min(accident)

accident * 0.9 # 사고율이 10% 감소하면 사고수를 예측
accident[accident >= 50]

mean(accident)

accident[accident >= mean(accident)]


