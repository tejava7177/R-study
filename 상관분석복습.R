# 데이터셋 불러오기
data(mtcars)

# 상관 행렬 계산
correlation_matrix <- cor(mtcars)

# 상관 행렬 출력
print(correlation_matrix)

# 특정 변수 간의 상관 계수 확인
cor(mtcars$mpg, mtcars$hp)
