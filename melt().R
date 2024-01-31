install.packages("reshape")
library(reshape)

df <- data.frame(
  ID = c(1,1,2,2,1,1,2,2),
  Time = c(1,2,1,2,1,2,1,2),
  Variable = c("x1", "x1", "x1", "x1", "x2", "x2","x2","x2"),
  Value = c(5,3,6,2,6,5,1,4)
)

casted_df = dcast(df, ID+Variable~Time)
casted_df <- dcast(df, ID + Variable ~ Time, value.var = "Value")
casted_df2 <- dcast(df, ID + Variable ~ Value)
