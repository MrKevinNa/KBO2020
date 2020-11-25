
# 패키지 호출
library(tidyverse)

# 데이터 불러오기
hitters <- readRDS(file = 'KBO_Hitters_2020.RDS')
pitchers <- readRDS(file = 'KBO_Pitchers_2020.RDS')

# tibble로 변환
hitters <- as.tibble(x = hitters)
pitchers <- as.tibble(x = pitchers)


## End of Document
