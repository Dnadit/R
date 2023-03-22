# reshape2 패키지를 이용하여 단계별로 iris 데이터 셋을 처리하시오.
# [단계1] 꽃의종류(Species)를 기준으로 '넓은 형식'을 '긴 형식'으로 변경하기

library(reshape2)
data("iris")
head(iris)
iris_melt <- melt(iris, id = "Species", na.rm = TRUE)
iris_melt

# [단계2] 꽃의 종별로 나머지 4가지 변수의 합계 구하기
iris_dcast <- dcast(iris_melt, Species~variable, sum)
iris_dcast
