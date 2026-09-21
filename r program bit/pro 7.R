student_data <- data.frame( 
  RollNo = c(101,102,103,104,105), 
  Marks = c(85, NA, 78, 90, NA), 
  Attendance = c(92,88,NA,95,80) 
  ) 
cat("Original Dataset\n") 
print(student_data)  
cat("\nMissing Values in Dataset\n") 
print(is.na(student_data))  
cat("\nTotal Missing Values\n") 
print(sum(is.na(student_data)))  
student_data$Marks[is.na(student_data$Marks)] <- 
  mean(student_data$Marks, na.rm = TRUE) 
student_data$Attendance[is.na(student_data$Attendance)] <- 
  mean(student_data$Attendance, na.rm = TRUE) 
cat("\nDataset after Replacing Missing Values\n") 
print(student_data) 
employee_data <- data.frame( 
  ID = c(1,2,3,4), 
  Salary = c(25000, NA, 30000, 28000), 
  Experience = c(2,4,NA,5) 
  )
cat("\nEmployee Dataset\n") 
print(employee_data)  
clean_data <- na.omit(employee_data) 
cat("\nDataset after Removing Missing Values\n") 
print(clean_data) 
x <- NULL 
cat("\nChecking NULL Value\n") 
print(is.null(x))













