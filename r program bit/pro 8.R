student_data <- data.frame(
  RollNo = c(101,102,103,104,105,106,107,108),
  Name = c("Anu","Bala","Chitra","Deepak",
           "Elan","Farah","Gokul","Hari"),
  Age = c(18,19,18,20,19,18,21,20),
  Marks = c(85,78,92,88,75,95,81,89),
  Department = c("CSE","ECE","IT","CSE",
                 "EEE","IT","ECE","CSE")
)
cat("Student Data Frame\n")
print(student_data)

cat("\nStructure of Data Frame\n")
str(student_data)

cat("\nSummary of Data Frame\n")
summary(student_data)

cat("\nFirst Six Rows\n")
head(student_data)