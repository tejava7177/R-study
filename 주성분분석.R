install.packages("ggplot2")
install.packages("FactoMineR")

# 필요한 패키지 로드
library(ggplot2)  # 시각화를 위해
library(FactoMineR)  # 주성분 분석을 위해

# 데이터 불러오기
data(iris)

# 주성분 분석을 위해 숫자형 변수만 선택
iris_numeric <- iris[, sapply(iris, is.numeric)]

# 주성분 분석 수행
pca_result <- PCA(iris_numeric, graph = FALSE)

# 주성분 분석 결과 요약
summary(pca_result)

# 주성분 분석 결과 시각화
fviz_pca_var(pca_result, col.var = "contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE, title = "PCA - Variable contributions")

# 주성분 분석 결과를 데이터셋에 추가
iris_with_pca <- cbind(iris, as.data.frame(pca_result$ind$coord))

# 첫 번째 주성분과 두 번째 주성분에 대한 scatter plot
ggplot(iris_with_pca, aes(PC1, PC2, color = Species)) +
  geom_point() +
  labs(title = "PCA - Scatter Plot of PC1 and PC2", x = "Principal Component 1", y = "Principal Component 2") +
  theme_minimal()
