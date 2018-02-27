#CHAPTER 1
# Define ratio() function
ratio <- function(x, y) {
  x/y
}

# Call ratio() with arguments 3 and 4
ratio(3, 4)

# Rewrite the call to follow best practices
mean(c(1:9, NA), trim = 0.1, na.rm = TRUE)

# 2nd element in tricky_list
typeof(tricky_list[[2]])

# Element called x in tricky_list
typeof(tricky_list[["x"]])

# 2nd element inside the element called x in tricky_list
typeof(tricky_list[["x"]][[2]])

# Guess where the regression model is stored
names(tricky_list)

# Use names() and str() on the model element
names(tricky_list$model)
str(tricky_list$model)

# Subset the coefficients element
tricky_list$model$coefficients

# Subset the wt element
tricky_list$model$coefficients[["wt"]]

# Replace the 1:ncol(df) sequence
for (i in seq_along(df)) {
  print(median(df[[i]]))
}

# Change the value of df
df <- data.frame()

# Repeat for loop to verify there is no error
for (i in seq_along(df)) {
  print(median(df[[i]]))
}

# Create new double vector: output
output <- vector(mode = "double", ncol(df))

# Alter the loop
for (i in seq_along(df)) {
  # Change code to store result in output
  output[[i]] <- median(df[[i]])
}

# Print output
print(output)

# Define example vector x
x <- c(1:10)

# Rewrite this snippet to refer to x
(x - min(x, na.rm = TRUE)) /
  (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))

  # Define example vector x
x <- 1:10

# Define rng
rng <- range(x, na.rm = TRUE)

# Rewrite this snippet to refer to the elements of rng
(x - min(x, na.rm = TRUE)) /(rng[2] - rng[1])

# Define example vector x
x <- 1:10 

# Use the function template to create the rescale01 function
rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1])/(rng[2] - rng[1])
  
}

# Test your function, call rescale01 using the vector x as the argument
rescale01(x)

# Define example vectors x and y
x <- c( 1, 2, NA, 3, NA)
y <- c(NA, 3, NA, 3,  4)

# Count how many elements are missing in both x and y
sum(is.na(x) & is.na(y))

# Turn this snippet into a function: both_na()
both_na <- function(x, y) {
  sum(is.na(x) & is.na(y))
}

# Define x, y1 and y2
x <- c(NA, NA, NA)
y1 <- c(1, NA, NA)
y2 <- c(1, NA, NA, NA)

# Call both_na on x, y1
both_na(x, y1)

# Call both_na on x, y2
both_na(x, y2)

# Rewrite mean_ci to take arguments named level and x
mean_ci <- function(level, x) {
  se <- sd(x) / sqrt(length(x))
  alpha <- 1 - level
  mean(x) + se * qnorm(c(alpha / 2, 1 - alpha / 2))
}

# Alter the arguments to mean_ci
mean_ci <- function(x, level = 0.95) {
  se <- sd(x) / sqrt(length(x))
  alpha <- 1 - level
  mean(x) + se * qnorm(c(alpha / 2, 1 - alpha / 2))
}

# Alter the mean_ci function
mean_ci <- function(x, level = 0.95) {
  if(length(x) < 1) {
    return(c(-Inf, Inf))
  }else {
    se <- sd(x) / sqrt(length(x))
    alpha <- 1 - level
    mean(x) + se * qnorm(c(alpha / 2, 1 - alpha / 2))
  }
}

# Define a numeric vector x with the values 1, 2, NA, 4 and 5
x <- c(1, 2, NA, 4 , 5)

# Call f() with the arguments x = x and y = 3
f(x = x, y = 3)

# Call f() with the arguments x = x and y = 10
f(x = x, y = 10)

# Rename the function f() to replace_missings()
replace_missings <- function(x, replacement) {
  # Change the name of the y argument to replacement
  x[is.na(x)] <- replacement
  cat(sum(is.na(x)), replacement, "\n")
  x
}

# Rewrite the call on df$z to match our new names
df$z <- replace_missings(df$z, 0)

replace_missings <- function(x, replacement) {
  # Define is_miss
  is_miss <- is.na(x)
  
  # Rewrite rest of function to refer to is_miss
  x[is_miss] <- replacement
  cat(sum(is_miss), replacement, "\n")
  x
}

replace_missings <- function(x, replacement) {
  is_miss <- is.na(x)
  x[is_miss] <- replacement
  
  # Rewrite to use message()
message(sum(is_miss), " missings replaced by the value ", replacement)
x
}

# Check your new function by running on df$z
replace_missings(df$z, 0)

#CHAPTER 3
# Initialize output vector
output <- vector("double", ncol(df))  

# Fill in the body of the for loop
for (i in seq_along(df)) {            
 output[i] <- median(df[[i]])
}

# View the result
output

# Turn this code into col_median()
col_median <- function(x) {
  output <- vector("double", ncol(df))  
  for (i in seq_along(x)) {            
    output[[i]] <- median(x[[i]])      
  }
  output
}

# Create col_mean() function to find column means
col_mean <- function(df) {
  output <- numeric(length(df))
  for (i in seq_along(df)) {
    output[[i]] <- mean(df[[i]])
  }
  output
}
# Define col_sd() function
col_sd <- function(df) {
  output <- numeric(length(df))
  for (i in seq_along(df)) {
    output[[i]] <- sd(df[[i]])
  }
  output
}

# Add a second argument called power
f <- function(x, power) {
    # Edit the body to return absolute deviations raised to power
    abs(x - mean(x))^power
}

# Find the column medians using col_median() and col_summary()
col_median(df)
col_summary(df, fun = median)

# Find the column means using col_mean() and col_summary()
col_mean(df)
col_summary(df, fun = mean)

# Find the column IQRs using col_summary()
col_summary(df, fun = IQR)

# Load the purrr package
library(purrr)

# Use map_dbl() to find column means
map_dbl(df, mean)

# Use map_dbl() to column medians
map_dbl(df, median)

# Use map_dbl() to find column standard deviations
map_dbl(df, sd)

# Find the mean of each column
map_dbl(planes, mean)

# Find the mean of each column, excluding missing values
map_dbl(planes, mean, na.rm = TRUE)

# Find the 5th percentile of each column, excluding missing values
map_dbl(planes, quantile,prob = 0.05, na.rm = TRUE)

# Find the columns that are numeric
map_lgl(df3, is.numeric)

# Find the type of each column
map_chr(df3, typeof)

# Find a summary of each column
map(df3, summary)

# Examine the structure of cyl
str(cyl)

# Extract the first element into four_cyls
four_cyls <- cyl[[1]]

# Fit a linear regression of mpg on wt using four_cyls
lm(four_cyls)

# Rewrite to call an anonymous function
map(cyl, function(df) lm(mpg ~ wt, data = df))

# Rewrite to use the formula shortcut instead
map(cyl, ~ lm(mpg ~ wt, data = .))

# Save the result from the previous exercise to the variable models
models <- map(cyl, ~ lm(mpg ~ wt, data = .))

# Use map and coef to get the coefficients for each model: coefs
coefs <- map(models, coef)

# Use string shortcut to extract the wt coefficient 
map_dbl(coefs, "wt")

# use map_dbl with the numeric shortcut to pull out the second element
map_dbl(coefs, 2)

# Define models (don't change)
models <- mtcars %>% 
  split(mtcars$cyl) %>%
  map(~ lm(mpg ~ wt, data = .))

# Rewrite to be a single command using pipes 
summaries <- models %>% map(summary) %>%
  map_dbl("r.squared")