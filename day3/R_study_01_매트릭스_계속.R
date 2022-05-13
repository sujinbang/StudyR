## 매트릭스 게속

z <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z

x <- c(20, 25, 30, 35)
x

m1 <- cbind(z,x) # 열기준 결합
m1

y <- 36:41
y

m2 <- rbind(m1, y) # 행기준 결합
m2

#m3 <- rbind(z,y) #In rbind(z, y) :number of columns of result is not a multiple of vector length (arg 2) : 갯수를 맞춰야함


# 값추출
m2[1,3]
m2[1,6]
m2[1,7] # Error : 인덱스 값을 벗어남

z[1,5]
z[4,5]
z[,5]

z[2,1:3]
z[1,c(1,2,4)]
z[1:2,]
z[1:2,c(2,4)]
z[,c(1,4)]
z


#매트릭스 이름붙이기
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow = 4) # 모든 셀의 개수가 4의 배수(nrow = 4)여야 매트릭스 생성
score
rownames(score) <- c('John', 'Tom', 'Mark', 'Jane')
score
colnames(score) <- c('Eng','Math','Sci')
score

score['John','Math']
score['Math','Tom'] # Error

score['Tom',]
score[,'Sci']
rownames(score)
colnames(score)
colnames(score)[2]


## LAB 햄버거 영양성분 정보
burger <- matrix(c(514,533,566,917,853,888,11,13,10),
                 nrow = 3)
burger
rownames(burger) <- c('Macdonald','Lotteria','BurgerKing')
burger

colnames(burger) <- c('kcal', 'na', 'fat')
burger


burger['Macdonald','na']
burger['Macdonald',]
burger[,'kcal']
