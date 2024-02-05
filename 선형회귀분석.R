# 데이터 불러오기
data(mtcars)

# 단순 선형 회귀분석: 연비(mpg)를 기준으로 wt(자동차 무게)에 대한 회귀분석
linear_model <- lm(mpg ~ wt, data = mtcars)

# 회귀분석 결과 요약
summary(linear_model)
