library(rpart)

data(iris)

head(iris)

tree_model <- rpart( Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris, method = "class")

print(tree_model)
summary(tree_model)

plot(tree_model, uniform = TRUE, margin = 0.1)
text(tree_model, use.n = TRUE, all = TRUE, cex = 0.8)
predicted_species <- predict( tree_model, type = "class")

conf_matrix <- table( Actual = iris$Species, Predicted = predicted_species)
print(conf_matrix)

accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("\nAccuracy =", round(accuracy * 100, 2), "%")