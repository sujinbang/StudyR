##1. Oracle 연결
## 한글 해결 DBMSencoding = 'euc-kr' / not 'utf-8'
install.packages('RODBC') # ROracle Open DataBase Connectity
# Rjava, rjdbc, rOracle
# Java DB Connectity(JDBC)
## 2. library 연결
library(RODBC)

## 3. ODBC 데이터 원본(64비트) 설정
conn1 = odbcConnect('SCOTT_DSN', uid = 'scott', pwd = 'tiger', DBMSencoding = 'euc-kr', believeNRows = F)

## 4. 연결확인
summary(conn1)


##5. 쿼리 실행
res <- sqlQuery(conn1, 'SELECT * FROM dept')
str(res)

sqlQuery(conn1, 'SELECT * FROM emp')

sqlQuery(conn1, 'SELECT * FROM memberTBL')

## 6. 접속
odbcClose(conn1)
summary(conn1)
conn1
