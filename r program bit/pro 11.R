marks <- c(45, 50, 55, 60, 62, 58, 65, 70, 72, 75, 80, 85, 90, 95, 150)
cat("Dataset:\n")
print(marks)
boxplot(marks,
        main = "Boxplot for Outlier Detection",
        col = "lightblue")
outliers_boxplot <- boxplot.stats(marks)$out
cat("\nOutliers detected using Boxplot:\n")
print(outliers_boxplot)
Q1 <- quantile(marks, 0.25)
Q3 <- quantile(marks, 0.75)
IQR_value <- IQR(marks)
lower_bound <- Q1 - 1.5 * IQR_value
upper_bound <- Q3 + 1.5 * IQR_value
cat("\nQ1 =", Q1)
cat("\nQ3 =", Q3)
cat("\nIQR =", IQR_value)
cat("\nLower Bound =", lower_bound)
cat("\nUpper Bound =", upper_bound)
iqr_outliers <- marks[marks < lower_bound | marks > upper_bound]
cat("\n\nOutliers detected using IQR Method:\n")
print(iqr_outliers)
z_scores <- scale(marks)
cat("\nZ-Scores:\n")
print(z_scores)
z_outliers <- marks[abs(z_scores) > 3]
cat("\nOutliers detected using Z-Score Method:\n")
print(z_outliers)