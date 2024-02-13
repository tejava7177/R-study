# arules 패키지 설치 및 로드
install.packages("arules")
library(arules)

# 임의의 구매 데이터 생성
set.seed(123)
transactions <- as(list(
  c("우유", "빵"),
  c("우유", "계란", "빵"),
  c("커피", "빵"),
  c("우유", "계란"),
  c("우유", "커피", "빵")
), "transactions")

# 연관분석 수행
rules <- apriori(transactions, parameter = list(support = 0.2, confidence = 0.6))


# 연관규칙 요약
summary(rules)


# 결과 확인
inspect(rules)

# 특정 지지도, 신뢰도, 향상도 값에 대한 연관규칙 필터링
rules_filtered <- subset(rules, subset = support > 0.2 & confidence > 0.6 & lift > 1)

# 필터링된 연관규칙 확인
inspect(rules_filtered)
