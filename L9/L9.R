# Name : Anish Sarkar
# Reg no : 19BCE1278

rm(list = ls())
library(factoextra)
library(cluster)

setwd('/home/anish/Documents/WIN 21-22/CSE3506 EDA/19BCE1278_Anish/L9')
seeds_df <- read.csv('seeds_K Means.csv')
seeds_df <- na.omit(seeds_df)
head(seeds_df)

seeds_df <- scale(seeds_df)
head(seeds_df)

dist_mat <- dist(seeds_df, method = 'euclidean')
hclust_complete <- hclust(dist_mat, method = 'complete')
plot(hclust_complete, cex=0.5, hang=-1)

cut <- cutree(hclust_complete, k=5)
abline(h = 5 , col = 'red')

rect.hclust(hclust_complete , k = 5, border = 2:5)
