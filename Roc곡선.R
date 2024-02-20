install.packages("pROC")

# 필요한 패키지 로드
library(pROC)

# iris 데이터셋 불러오기
data(iris)

# ROC 곡선을 그리기 위해 Species를 이진 값으로 변환
# 이 예제에서는 Setosa와 그 외의 종을 분류하는 문제를 다룹니다.
iris$binary_species <- factor(ifelse(iris$Species == "setosa", "Setosa", "Other"))

# ROC 곡선을 그리기 위해 예측값 생성
# 여기서는 예시로 임의의 예측값을 사용합니다.
set.seed(123) # 재현 가능성을 위해 시드 설정
iris$predicted <- runif(nrow(iris))

# ROC 곡선 계산
roc_data <- roc(iris$binary_species, iris$predicted)

# ROC 곡선 시각화
plot(roc_data, main = "ROC Curve for Iris Dataset",
     col = "blue", lwd = 2, print.auc = TRUE)
