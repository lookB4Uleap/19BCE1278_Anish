setwd("/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L2") 
x<-1:5  
y<-c(3,5,7,9,11) 
data_set=data.frame(x,y)
data_set 
View(data_set) 
str(data_set) 
names(data_set)
plot(x,y) 
LR_result<-lm(y~x) 
LR_result
summary(LR_result) 
abline(LR_result, col="blue") 

x=data.frame(x=6:8) 
R<-predict(LR_result,x) 
R
summary(R)

x=data.frame(x=c(6,7,8))
R1<-predict(LR_result,x)
R1
summary(R1)

