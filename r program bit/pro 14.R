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

#bbb
data <- data.frame(
  Age = c(22, 25, 27, 30, 35, 40, 42, 45, 50, 52),
  Income = c(20, 25, 28, 32, 40, 55, 60, 65, 75, 80)
)


print(data)


data_scaled <- scale(data)


set.seed(123)


k_values <- 2:5

# Store WCSS values
wcss <- numeric(length(k_values))


for (i in seq_along(k_values)) {
  
  k <- k_values[i]
  
  km <- kmeans(data_scaled, centers = k, nstart = 25)
  
  wcss[i] <- km$tot.withinss
}


result <- data.frame(
  K = k_values,
  WCSS = round(wcss, 3)
)

print(result)


plot(k_values, wcss,
     type = "b",
     pch = 19,
     xlab = "Number of Clusters (K)",
     ylab = "Within-Cluster Sum of Squares",
     main = "Elbow Method for Selecting K")


set.seed(123)

final_kmeans <- kmeans(data_scaled,
                       centers = 3,
                       nstart = 25)


data$Cluster <- final_kmeans$cluster

print(data)


print(final_kmeans$centers)


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
