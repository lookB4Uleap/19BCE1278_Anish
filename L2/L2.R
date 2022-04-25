# Name: Anish Sarkar
# Reg no: 19BCE1278
rm(list=ls()) 
setwd("/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L2")
Palmoil <- read.csv('Palmoil.csv')
class(Palmoil) # check foe the type of dataset (dataframe has shown)
potime=ts(Palmoil$Dollar,start = 1,end = 128,frequency = 4)
class(potime)
library('forecast')
library('tseries')
plot(potime)
acf(potime)
pacf(potime)
adf.test(potime)
mypo=auto.arima(potime,ic="aic",trace=TRUE) # trace - list all models 
mypo
acf(ts(mypo$residuals))
myfc=forecast(mypo,level=c(95),h=10*4)
myfc
plot(myfc)
