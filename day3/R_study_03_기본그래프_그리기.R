## 기본그래프
# 막대그래프 - Bar Chart
favorite.season <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL',
                     'FALL','SUMMER','SPRING','SPRING')
favorite.season
ds <- table(favorite.season) # 도수분포표
ds
barplot(ds, main = '좋아하는 계절')
barplot(ds, main = '좋아하는 계절',col = c('aliceblue','plum', 'steelblue1','rosybrown'))
barplot(ds, main = '좋아하는 계절',col = rainbow(7))
barplot(ds, main = '좋아하는 계절',col = rainbow(7),
        xlab = '계절', ylab = '빈도수')

barplot(ds, main = '좋아하는 계절',col = rainbow(7),
        xlab = '계절', ylab = '빈도수', horiz = T)

barplot(ds, main = '좋아하는 계절',col = rainbow(7),
        xlab = '계절', ylab = '빈도수', horiz = F,
        names = c('가을','봄','여름','겨울'), las = 1)



colors()
