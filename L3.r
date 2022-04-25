# Non-Stationarity 
rm(list = ls())
library(forecast)
library(tseries)

setwd("/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish")
data <- read.csv("Tractor-Sales.csv")
data <- Tractor.Sales
class(data)

data = ts(data$Number.of.Tractor.Sold, start = c(2003,1), frequency = 12)
class(data)

plot(data, xlab = "Years", ylab = "Tractor Sales")

plot(diff(data), ylab = "Differenced Tractor Sales")

ld <- log10(data)
plot(ld, ylab = "Log(Tractor Sales)")

dld <- diff(ld)
plot(dld, ylab = "Differenced Log(Tractor Sales)")

adf.test(dld) # Dickey-Fuller test shows stationarity

par(mfrow = c(1,2)) # to analyze multiple graphs in a single window

acf(ts(dld), main = "ACF Tractor Sales")
pacf(ts(dld), main = "PACF Tractor Sales")

# No trend, do ARIMA model

ARIMAfit = auto.arima(dld, ic = "aic", trace = TRUE)
summary(ARIMAfit)

fc = forecast(ARIMAfit, level = c(95), h=3*12)
plot(fc)
summary(fc)

attributes(fc)

