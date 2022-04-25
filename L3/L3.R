# Name: Anish Sarkar
# Reg no: 19BCE1278
rm(list = ls())
library(forecast)
library(tseries)

setwd("/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L3")
data <- read.csv('soya_oil data set for TS forecast.csv')
head(data)
# View(data)

data_ts <- ts(data$Dolla, start = c(1990,1), frequency = 4)
plot(data_ts, xlab="Date", ylab="Price")

log_data_ts <- log(data_ts)
plot(log_data_ts, ylab="Log(Price)")

diff_data_ts <- diff(log_data_ts)
plot(diff(diff_data_ts, ylab="Differenced Log(Price)"))

acf(diff(diff_data_ts), main = "ACF Price of Soya Oil")
pacf(diff(diff_data_ts), main = "PACF Price of Soya Oil")

ARIMAfit = auto.arima(diff(diff_data_ts), ic = "aicc", trace = TRUE)
fc = forecast(ARIMAfit, level = c(95), h=3*4)
plot(fc)
