hours <- c(1,2,3,4,5,6,7,8,9,10)
pass <- c(0,0,0,0,0,1,1,1,1,1)
data <- data.frame(hours, pass)

data$pass <- as.factor(data$pass)

model <- glm(pass ~ hours, data = data, family = binomial)

summary(model)

pred_prob <- predict(model, type = "response")
cat("Predicted Probabilities:\n")
print(pred_prob)

pred_class <- ifelse(pred_prob >= 0.5, 1, 0)
cat("\nPredicted Classes:\n")
print(pred_class)
 
actual_class <- as.numeric(as.character(data$pass) )

conf_matrix <- table( Actual = actual_class, Predicted = pred_class )
cat("\nConfusion Matrix:\n")
print(conf_matrix)
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("\nAccuracy = ", round(accuracy*100,2), "%")