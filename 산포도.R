# 샘플 데이터 생성
x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 5, 4, 6)

# 산포도 그리기
plot(x, y, main="Scatter Plot", xlab="X축 라벨", ylab="Y축 라벨", pch=16, col="blue")


# 데이터 프레임 생성
data <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 3, 5, 4, 6))

# 산포도 그리기
plot(data$x, data$y, main="Scatter Plot", xlab="X축 라벨", ylab="Y축 라벨", pch=16, col="blue")
