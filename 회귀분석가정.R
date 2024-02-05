# 가상의 데이터 생성
set.seed(123)
x <- seq(1, 100, by = 1)
y <- 2 * x + rnorm(length(x), mean = 0, sd = 10)

# 모델 적합
model <- lm(y ~ x)

# 잔차 계산
residuals <- resid(model)

# 그림 생성
par(mfrow = c(2, 2))

# 선형성이 깨진 경우
plot(x, residuals, main = "Non-Linearity", xlab = "Predicted Values", ylab = "Residuals")
lines(lowess(x, residuals), col = "red")

# 독립성이 깨진 경우
plot(residuals[-length(residuals)], residuals[-1], main = "Non-Independence", xlab = "Residuals (t-1)", ylab = "Residuals (t)")

# 등분산성이 깨진 경우
plot(fitted(model), residuals, main = "Non-Homoscedasticity", xlab = "Fitted Values", ylab = "Residuals")
abline(h = 0, col = "red")

# 비상관성이 깨진 경우
acf(residuals, main = "Non-Independence of Residuals")
