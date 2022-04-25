# Name : Anish Sarkar
# Reg no : 19BCE1278

rm(list = ls())
# data <- read.csv(file.choose(), header = T)
data <- read.csv('/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L5/admission.csv', header = T)
str(data)
head(str)
summary(data)
hist(data$admit, col="blue")
data$admit <- as.factor(data$admit)

library(caret)
train_ind <- createDataPartition(data$admit, p=0.80, list=F)
train_ds <- data[train_ind,]
test_ds <- data[-train_ind,]
model <- glm(admit~., data = train_ds, family = 'binomial')
summary(model)

pred_train = predict(model, train_ds, type = 'response')
pred_train

pred_train = ifelse(pred_train > 0.5, 1, 0)
pred_train

# confusion matrix
tab1 <- table(Predicted = pred_train, Actual = train_ds$admit)
tab1

# F1 - score
1 - sum(diag(tab1))/sum(tab1)
