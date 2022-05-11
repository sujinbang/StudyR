## 패키지 설치 및 로드
'Hello World'
"Hello World"
install.packages('ggplot2')
library(ggplot2)
library(g.data)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

##cowsay 패키지
install.packages('cowsay')
library(cowsay)

say(what = 'Hi', by='cow', by_color = 'blue', what_color = 'green')

# 시스템 함수
Sys.Date()
Sys.time()


## 생일맞추기 === ((m*4)+9)*25 + d
#(m*4)*25 + 9*25 + d
(m * 100) + 225 + d
#8월 22일

(931-235)/100

# 소윤 주연  민철  석준  현석
# 931  754   1029  1139  1442

val <- 931
d <- (val - 225) %% 100
m <- ((val - 225))-(val - 225)%%100/100
#cat(m, '월', d, '일')

