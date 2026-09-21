A <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2) 
# Create Matrix B 
B <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2) 
# Display matrices 
cat("Matrix A:\n") 
print(A) 
cat("Matrix B:\n") 
print(B) 
# Matrix Addition 
add_result <- A + B 
cat("\nAddition of A and B:\n") 
print(add_result) 
# Matrix Multiplication 
mult_result <- A %*% B 
cat("\nMultiplication of A and B:\n") 
print(mult_result)
transpose_result <- t(A) 
cat("\nTranspose of Matrix A:\n") 
print(transpose_result) 
# Determinant of Matrix A 
det_result <- det(A) 
cat("\nDeterminant of Matrix A:\n") 
print(det_result)