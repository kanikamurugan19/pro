grades <- c("A", "B", "A", "C", "B", "A", "C", "B", "A", "B") 
# Convert to factor 
grade_factor <- factor(grades) 
# Display factor variable 
cat("Factor Variable:\n") 
print(grade_factor) 
# Display levels 
cat("\nLevels of Factor:\n") 
print(levels(grade_factor)) 
# Frequency table 
cat("\nFrequency Table:\n") 
print(table(grade_factor)) 
# Summary of factor data 
cat("\nSummary:\n") 
print(summary(grade_factor))