rm(list = ls())
library(factoextra)
library(cluster)

df <- USArrests
df <- na.omit(df)
head(df)

df <- scale(df)
head(df)

dist_mat <- dist(df, method = 'euclidean')
hclust_complete <- hclust(dist_mat, method = 'complete')
plot(hclust_complete, cex=0.5, hang=-1)

cut <- cutree(hclust_complete, k=4)
abline(h =4 , col = 'red')

rect.hclust(hclust_complete , k = 4, border = 2:5)
