
# 패키지 호출
library(usethis)

# 데이터 패키지 생성
create_package(path = 'KBO2020')

# 위 코드를 실행하면 새로운 프로젝트가 열림!!

# Description 파일에 추가!
use_roxygen_md()
use_tibble()
use_package_doc()
use_tibble()

# 현재 폴더에 git 사용
use_git()

# 라이센스 추가 : 원본 데이터의 라이센스를 준용!
use_ccby_license()

# README 생성 : rmd 수정 후 knit!
use_readme_rmd()

# github.com에서 auth_token을 미리 발급받아야 함!
# 아래 코드를 활용하여 환경변수에 미리 저장할 것!
edit_r_environ()

# github에 remote repository 생성 및 Push 실행
use_github(auth_token = Sys.getenv('GITHUB_TOKEN'))


# data.R 파일 생성 : 필요 없음!
# use_r(name = 'data')

# data-raw 폴더에 data를 읽어오는 R 파일 추가!
# 파일명: load_data.R
# load_data.R 파일에서 hitters, pitchers 생성
# tibble 자료형으로 변환!

# tibble을 data 폴더에 추가
use_data(hitters)
use_data(pitchers)

# 데이터를 설명하는 R 파일 생성!
# 상세 내용은 Headly의 nycflights13 패키지의 R 파일 참조
use_r(name = 'hitters')
use_r(name = 'pitchers')

# Build 탭으로 이동!
# More > Document 메뉴 클릭!

devtools::document()

## End of Document

