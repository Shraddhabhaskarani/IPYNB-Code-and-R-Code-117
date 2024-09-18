# Load necessary library
library(ggplot2)

# Load the data
data <- read.csv("C:/Users/sravy/Downloads/Rossmann Stores Data.csv")

# Convert columns to appropriate types if necessary
data$Sales <- as.numeric(data$Sales)
data$Customers <- as.numeric(data$Customers)

# Perform linear regression
model <- lm(Sales ~ Customers, data = data)

# Summary of the linear regression model
summary(model)

# Create scatter plot with regression line
ggplot(data, aes(x = Customers, y = Sales)) +
  geom_point(alpha = 0.5, color = "blue") +
  geom_smooth(method = "lm", color = "red", se = TRUE) +
  labs(title = "Linear Regression: Sales vs. Customers",
       x = "Number of Customers",
       y = "Sales") +
  theme_minimal()
