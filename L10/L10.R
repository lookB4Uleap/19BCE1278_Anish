# Name : Anish Sarkar
# Reg no : 19BCE1278

rm(list=ls())
library('stats19')
library('dplyr')
library('randomForest')

df <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", 
               header = FALSE)
df$V1 <- as.factor(as.character(df$V1))
View(df)
str(df)
index=sample(2,nrow(df), replace=TRUE,prob=c(0.7,0.3))
training=df[index==1,]
testing=df[index==2,]
RFM <- randomForest(V1 ~ .,data=training, importance=T, proximity=T)
V1_Pred=predict(RFM,testing)
testing$V1_Pred=V1_Pred
View(testing)

CFM=table(testing$V1,testing$V1_Pred)
CFM

