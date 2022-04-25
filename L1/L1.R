# Name : Anish Sarkar
# Reg no: 19BCE1278
setwd("/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L1")
data_set=read.csv("import d.csv")
names(data_set)
head(data_set)
plot(data_set)
LR_result=lm(y~x,data=data_set)
abline(LR_result,col="green")
summary(LR_result)
LR_result
LR_result$fitted.values
x=data.frame(x=6:8)
predict(LR_result,x)
x=data.frame(x=c(6,7))
# predictions
predict(LR_result,x)
