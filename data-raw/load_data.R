## code to prepare `load_data` dataset goes here

# 패키지 호출
library(tidyverse)

# 현재 작업경로 확인
getwd()

# 데이터 불러오기
hitters <- readRDS(file = 'KBO_Hitters_2020.RDS')
pitchers <- readRDS(file = 'KBO_Pitchers_2020.RDS')

# tibble로 변환
hitters <- as_tibble(x = hitters)
pitchers <- as_tibble(x = pitchers)


## End of Document
