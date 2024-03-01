# 샘플 데이터 생성 (여기서는 mtcars 데이터셋의 wt와 mpg 변수를 사용합니다)
data <- mtcars

# 산포도 그리기
plot(data$wt, data$mpg, main="Scatter Plot with Regression Line", xlab="Weight", ylab="Miles Per Gallon", col="blue", pch=19)

# 회귀선 추가
abline(lm(mpg ~ wt, data), col="green")
