Data2 <- c("2017-02-05 수입3000원",
           "2017-02-06 수입4500원",
           "2017-02-07 수입2500원")
Data2
library(stringr)

# 출력결과 : "3000원" "4500원" "2500원"
Data <- str_extract_all(Data2, "[0-9]{4}[가-힣]")
Data
class(Data)
unlist(Data)

# 출력결과 : "-- 수입원" "-- 수입원" "-- 수입원"
Data <- str_replace_all(Data2, "[0-9]", "")
Data

# 출력결과 : "2017/02/05 수입3000원" "2017/02/06 수입4500원" "2017/02/07 수입2500원"
Data <- str_replace_all(Data2, "-", "/")
Data

# 출력결과:"2017-02-05 수입3000원,2017-02-06 수입4500원,2017-02-07 수입2500원"
Data <- paste(Data2, collapse=",")
Data