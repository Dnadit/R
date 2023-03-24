# ch07 homework(2,3,4번 문제) ============================
getwd()
setwd("D:/works/data")
dataset <- read.csv("dataset.csv", header = T)
dataset2 <- subset(dataset, price >= 2 & price <= 8)
dataset2

# 2. 본문에서 생성된 dataset2의 resident칼럼을 대상으로 NA 값을 제거한 후 
#resident2 변수에 저장하시오.
resident2 <- na.omit(dataset2$resident)
resident2

# 3. 본문에서 생성된 dataset2의 gender 칼럼을 대상으로 1->"남자", 2->"여자"로 
# 코딩 변경하여 gender2 칼럼에 추가하고, 파이 차트로 결과를 확인하시오.
dataset2$gender2[dataset2$gender == 1] <- '남자'
dataset2$gender2[dataset2$gender == 2] <- '여자'
pie(table(dataset2$gender2))

# 4. 본문에서 생성된 dataset2의 age 칼럼을 대상으로 30세 이하->1, 30~55세->2,
# 55이상->3으로 리코딩하여 age3 칼럼에 추가한 뒤에 age,age2,age3 칼럼만 확인하시오.
dataset2$age1[dataset2$age <= 30] <- '1'
dataset2$age2[dataset2$age > 30 & dataset2$age <=55] <- '2'
dataset2$age3[dataset2$age > 55] <- '3'
dataset2[c('age1', 'age2', 'age3')]

# ch08 homework(1, 2번 문제) ============================
install.packages("lattice")
library("lattice")
??equal.count
# 1번 문제
data("quakes")
head(quakes)
sum(is.na(quakes$depth))
depthgroup <- equal.count(quakes$depth, number=3, overlap=0)
depthgroup
maggroup <- equal.count(quakes$mag, number=2, overlap=0)
maggroup
xyplot(lat~long | maggroup*depthgroup, data=quakes)

# 2번 문제
install.packages("latticeExtra")
library("latticeExtra")
data(SeatacWeather)
head(SeatacWeather)
xyplot(max.temp+min.temp ~ day | SeatacWeather$month, data=SeatacWeather, type='l')
