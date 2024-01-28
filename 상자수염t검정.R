name=c('shim','kim','osaki','choi')
gender = c('male', 'female', 'female', 'male')
age = c(35,27,22,40)
height = c(180,165,150,175)
weight= c(70,55,34,80)

df=data.frame(name, gender, age, height, weight)

#상자수염그림
# df라는 데이터프레임에서 성별을 기준으로 키에 대한 상자수염 그림을 그려라
boxplot(height~gender, df)

# t 검정
t.test(height~gender, df)
