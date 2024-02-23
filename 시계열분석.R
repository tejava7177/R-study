# 데이터 불러오기
data(AirPassengers)

# 데이터 확인
head(AirPassengers)

# 시계열 그래프 그리기
plot(AirPassengers, main="AirPassengers 데이터셋의 월별 항공 여객 수", xlab="Year", ylab="Passengers")

# 시계열 분해(추세, 계절성, 잔차)하여 그래프로 표시
plot(decompose(AirPassengers))
