# 포브스 기업 리포트 데이터 분석
install.packages('HSAUR')
library(HSAUR)
data("Forbes2000")
ds <- Forbes2000
ds[!complete.cases(ds),] # 결측값 확인

str(ds)
head(ds)
View(ds) # ds 파일 열기

#국가별 기업 통계
table(ds$country)
tmp <- sort(table(ds$country), decreasing = T)
top.10.country <- tmp[1:10]
top.10.country

par(mar=c(8,4,4,2))
barplot(top.10.country,
        main='기업수 상위 10개국',
        col=rainbow(10),
        las=2)
par(mar=c(5,4,4,2))

#업종별 기업 분포
table(ds$category)
tmp <- sort(table(ds$category), decreasing=T)
top.10.category <- tmp[1:10]
top.10.category

par(mar=c(10,4,4,2))  # 그래프 여백 조정
barplot(top.10.category,
         main='기업수 상위 10개 업종',
         col='pink',
         las=2)
par(mar=c(5,4,4,2))

#업종별 기업 통계
tmp <- ds[ds$category %in% names(top.10.category),]
levels(tmp$category)
tmp$category <- factor(tmp$category)
levels(tmp$category)

par(mar=c(10,4,4,2))
boxplot(assets~category, data=tmp,
        ylim=c(0,100),
        xlab= ' ',
        las=2)
par(mar=c(5,4,4,2))


# 기업 가치 상위 10대 기업
tmp <- ds[order(ds$marketvalue, decreasing = T),]
head(tmp$marketvalue)
tmp[1:10, c('name', 'country', 'category', 'marketvalue')]
str(tmp)

#한국 기업 정보
korea <- subset(ds, country=='South Korea')
korea[,c('rank', 'name','category', 'marketvalue')]
head(korea)



#기업 가치와 타 변수와의 상관관계
tmp <- ds[,5:8]
tmp <- tmp[complete.cases(tmp),]
plot(tmp, lower.panel=NULL)
cor(tmp)

