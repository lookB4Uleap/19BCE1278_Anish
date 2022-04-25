library(factoextra)
library(cluster)

df <- USArrests
df <- na.omit(df)
df <- scale(df)
head(df)

fviz_nbclust(df, kmeans, method = "wss")

set.seed(1)
km <- kmeans(df, centers = 4, nstart = 25)
km

fviz_cluster(km, data = df)

final_data <- cbind(USArrests, cluster = km$cluster)

head(final_data)
