# forecast 패키지 설치
install.packages("forecast")

# forecast 패키지 불러오기
library(forecast)

# 시계열 데이터 불러오기
data <- AirPassengers

# ARIMA 모델 피팅
arima_model <- Arima(data, order=c(2,1,1))

# 모델 요약
summary(arima_model)

# 예측
forecast_result <- forecast(arima_model, h=12)  # 앞으로 12개월 예측

# 예측 결과 그래프로 표시
plot(forecast_result, main="Forecasted AirPassengers", xlab="Year", ylab="Passengers")
lines(forecast_result$fitted, col="blue")  # 적합된 값 표시
