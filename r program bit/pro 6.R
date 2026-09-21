install.packages("readxl")
install.packages("writexl")
install.packages("jsonlite")
library(readxl)
library(writexl)
library(jsonlite)
# Create Data Frame
student <- data.frame(
  ID = c(101,102,103),
  Name = c("Anu","Bala","Chitra"),
  Marks = c(85,90,88)
)
# Excel
write_xlsx(student, "H:/2026_RPrograms/student.xlsx")
excel_data <- read_excel("H:/2026_RPrograms/student.xlsx")
# JSON
write_json(student, "H:/2026_RPrograms/student.json", pretty = TRUE)
json_data <- fromJSON("H:/2026_RPrograms/student.json")
# Text
write.table(student,
            "H:/2026_RPrograms/student.txt",
            sep = "\t",
            row.names = FALSE)
text_data <- read.table(
  "H:/2026_RPrograms/student.txt",
  header = TRUE,
  sep = "\t"
)
cat("Excel Data\n")
print(excel_data)
cat("\nJSON Data\n")
print(json_data)
cat("\nText Data\n")
print(text_data)
