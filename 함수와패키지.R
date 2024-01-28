age = c(35,27,22,40)
height = c(180,165,150,175)
weight= c(70,55,34,80)

# 함수정의
함수이름 = function(입력값){
  내용
  reutnr(출력값)
}

cal_bmi=function(ww, hh){
  bmi = ww/(hh/100)**2
  return (bmi)
}

# 엑셀파일을 읽어올 수 있는 함수가 포함된 패키지
install.packages("readxl")
readxl

# 패키지 불러오기
library(readxl)

