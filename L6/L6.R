# Name: Anish Sarkar
# Reg no: 19BCE1278

library(factoextra)
library(cluster)

setwd("/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L6")
seed_data <- read.csv("seeds_K Means.csv")

df <- seed_data
df <- na.omit(df)
df <- scale(df)
head(df)

fviz_nbclust(df, kmeans, method = "wss")

set.seed(1)
km <- kmeans(df, centers = 3, nstart = 25)
km

fviz_cluster(km, data = df)

final_data <- cbind(seed_data, cluster = km$cluster)

head(final_data)

