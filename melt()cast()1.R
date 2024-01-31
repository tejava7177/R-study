install.packages("reshape2")
library(reshape2)

# 가상의 넓은 형태 데이터 생성
wide_data <- data.frame(
  ID = c(1, 2, 3),
  Gender = c("Male", "Female", "Male"),
  Before_A = c(25, 30, 35),
  Before_B = c(15, 20, 25),
  After_A = c(20, 28, 33),
  After_B = c(12, 18, 23)
)



# Wide format 데이터 생성
wide_data <- data.frame(
  ID = c(1, 2, 3),
  Before = c(25, 30, 35),
  After = c(20, 28, 33)
)

melted_data <- melt(wide_data, id.vars = "ID", variable.name = "Timepoint", value.name = "Value")

df <- data.frame(
  ID = c(1,1,2,2,1,1,2,2),
  Time = c(1,2,1,2,1,2,1,2),
  Variable = c("x1", "x1", "x1", "x1", "x2", "x2","x2","x2"),
  Value = c(5,3,6,2,6,5,1,4)
)


casted_df = dcast(df, ID+Variable~Time)
casted_df <- dcast(df, ID + Variable ~ Time, value.var = "Value")


