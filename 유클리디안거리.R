# proxy 패키지 설치 및 로드
install.packages("proxy")
library(proxy)

# 예시 데이터 생성
data <- data.frame(
  x = c(1, 2, 3),
  y = c(4, 5, 6)
)

# 유클리디안 거리 계산
dist_euclidean <- proxy::dist(data, method = "Euclidean")

# 결과 출력
print(dist_euclidean)
