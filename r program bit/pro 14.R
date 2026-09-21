#aaa
data(iris)

iris_data <- iris[,1:4]

set.seed(123)
kmeans_model <- kmeans( iris_data, centers = 3, nstart = 25)

cat("Cluster Assignment:\n")
print(kmeans_model$cluster)
cat("\nCluster Centers:\n")
print(kmeans_model$centers)

plot( iris_data$Petal.Length, iris_data$Petal.Width, col = kmeans_model$cluster, pch = 19,
      xlab = "Petal Length", ylab = "Petal Width", main = "K-Means Clustering on Iris Dataset")

spoints( kmeans_model$centers[,3], kmeans_model$centers[,4], col = 1:3, pch = 8,
         cex = 3)

#ccc

data(iris)

head(iris)

iris_data <- iris[,1:4]

distance_matrix <- dist( iris_data, method = "euclidean")

print(distance_matrix)

hc_model <- hclust( distance_matrix, method = "ward.D2")

print(hc_model)

plot( hc_model, labels = FALSE, hang = -1, main = "Hierarchical Clustering Dendrogram",
      xlab = "Observations", ylab = "Height")

rect.hclust( hc_model, k = 3, border = "red")

clusters <- cutree( hc_model, k = 3)

cat("Cluster Assignments:\n")
print(clusters)