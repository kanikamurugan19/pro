install.packages("lmtest")

library(lmtest)
Hours <- c(1,2,3,4,5,6,7,8,9,10)
Marks <- c(15,25,35,42,50,58,65,72,82,90)
data <- data.frame(Hours, Marks)

model <- lm(Marks ~ Hours, data=data)

summary(model)

plot(Hours, Marks,
     main="Scatter Plot",
     xlab="Hours Studied",
     ylab="Marks")
abline(model, col="red")

residuals_model <- residuals(model)

hist(residuals_model,
     main="Histogram of Residuals",
     xlab="Residuals")

qqnorm(residuals_model)
qqline(residuals_model, col="blue")

shapiro.test(residuals_model)
plot(fitted(model),
     residuals_model,
     main="Residuals vs Fitted",
     xlab="Fitted Values",
     ylab="Residuals")
abline(h=0, col="red")

bptest(model)