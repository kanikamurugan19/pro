data <- c(10, 15, 20, 25, 20, 30, 35, 20, 40)

mean_value <- mean(data)

median_value <- median(data)

getmode <- function(v)
{
  unique_values <- unique(v)
  unique_values[which.max(tabulate(match(v, unique_values)))]
}
mode_value <- getmode(data)

variance_value <- var(data)
sd_value <- sd(data)

cat("Dataset :", data, "\n")
cat("Mean =", mean_value, "\n")
cat("Median =", median_value, "\n")
cat("Mode =", mode_value, "\n")
cat("Variance =", variance_value, "\n")
cat("Standard Deviation =", sd_value, "\n")