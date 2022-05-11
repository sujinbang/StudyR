## 변수
total <- 5050
total
print(total)
cat('합계는', total)
#print('합계는', total) #Error


변수 <- 100
변수 # 출력 안됨
print(변수) # 출력됨

a <- 10
b <- 20
c <- a + b
cat(a, '+', b, '=', c)

a <- 50
a

##변수명
avg
.total <- 20201
.total

A <- 11
a
var_A <- 100
var_a <- 90
iris

#R에서 변수 특이점 '. 허용'
abs <- 80
mid <- 10
mid.sum <-mid * abs
mid.sum

10 / 0 #Int
-10 / 0# #Inf
sprt(2):#Nan
val <- NULL
val
  
## 숫자형 변수
age.1 <- 20
age.2 <- 25
print(age.1 + age.2)
name.1 <- 'John'
print(name.1+3) #Error
print(name.1*3) #Error

## 논리형 대문자 T, F 많이 사용
5 > 3
2 > 7
a <- TRUE
a
b <- F
b
# T와 F는 변수명 X

a <- NA  # 결측값
a
# NaN, Inf, -Inf


## 소금물의 농도
# 변수 salt 소금의 양
# 변수 water 물의 양
# 변수 result 농도
## 결과를 "소금 = *, 물 = * : 농도 = **%"
salt <- 50
water <- 100
result <- salt / (salt + water) * 100
cat("소금=", salt, "물=", water, ": 농도 =", result, "%")

# R 무한 루프 빠져나오기 - 실행창에서 esc (Python은 Ctrl + c)
