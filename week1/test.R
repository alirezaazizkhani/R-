# # Creating the numeric vector
# numbers <- c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)
# 
# # Calculating the average
# average <- mean(numbers)
# 
# # Output the average
# average
# 
# 
# 
# # Initialize the sum variable
# sum_squares <- 0
# 
# # For loop to calculate the sum of squares from 1 to 25
# for (i in 1:25) {
#   sum_squares <- sum_squares + i^2
# }
# 
# # Output the sum of squares
# sum_squares
# 
# 
# # Check the number of rows in the cars dataset
# num_rows <- nrow(cars)
# 
# # Output the number of rows
# num_rows
# 
# 
# 
# 
# 
# # Get the names of the columns in the cars dataset
# column_names <- colnames(cars)
# 
# # Access the name of the second column
# second_column_name <- column_names[2]
# 
# # Output the name of the second column
# second_column_name
# 
# 
# 
# # Calculate the average distance using the second column of the cars dataset
# average_distance <- mean(cars[, 2])
# 
# # Output the average distance
# average_distance
# 
# 
# # Find the row(s) where the distance is 85
# row_with_distance_85 <- which(cars[, 2] == 85)
# 
# # Output the row number(s)
# row_with_distance_85
# 
x <- 1:10
y <- rnorm(10, mean=20, sd=5)
plot(x, y)
