# shining_list, the list containing movie name, actors and reviews, is pre-loaded in the workspace

# We forgot something; add the year to shining_list
shining_list_full <- c(shining_list, year = 1980)

# Have a look at shining_list_full
str(shining_list_full)

#Intermediate R 
#CHAPTER 1
# Comparison of logicals
TRUE == FALSE

# Comparison of numerics
-6 * 14 != 17 - 101

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1

# Comparison of numerics
-6 * 5 + 2 >= -10 + 1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20

# The social data (linkedin, facebook, views) has been created for you

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12 

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

# Select the second column, named day2, from li_df: second
second <- li_df$day2

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5

# Count the number of TRUEs in extremes
sum(extremes)

# Solve it with a one-liner
0

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
   print("You're popular!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
   print("You're popular!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}

# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
print(sms)

#CHAPTER 2
# Initialize the speed variable
speed <- 64

# Code the while loop
while ( speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}

# Print out the speed variable
speed

# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))

    # Break the while loop when speed exceeds 80
  if ( speed > 80) {
    break
  }

  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( 3 * i %% 8 == 0 ) {
    print(3 * i)
    break
  }
  i <- i + 1

  # The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for(ele in linkedin) {
  print(ele)
}



# Loop version 2
for(i in 1:length(linkedin)) {
  print(linkedin[i])
}

# The tic-tac-toe matrix ttt has already been defined for you

# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add if statement with next
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}

# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  if (char == "u") {
    break
  }
}

# Print out rcount
print(rcount)

#CHAPTER 3
# Consult the documentation on the mean() function
?mean

# Inspect the arguments of the mean() function
args(mean)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)

# Inspect avg_li and avg_fb
avg_li
avg_fb

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, 0.2)

# Inspect both new variables
avg_sum
avg_sum_trimmed

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)

# Create a function pow_two()
pow_two <- function(x) {
  x^2
}


# Use the function
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x1,x2) {
  abs(x1) + abs(x2)
}


# Use the function
sum_abs(-2,3)

# Define the function hello()
hello <- function() {
  print("Hi there!")
  return(TRUE)
}




# Call the function hello()
hello()

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if(print_info) {
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}

# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0

  for (v in views) {
    count <- count + interpret(v)
  }

  if (return_sum == TRUE) {
    count
  } else {
    NULL
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

# Load the ggplot2 package
library(ggplot2)

# Retry the qplot() function
qplot(mtcars$wt,mtcars$hp)

# Check out the currently attached packages again
search()