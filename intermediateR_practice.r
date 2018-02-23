#Chapter 1
# me, other_199, and previous_4 are available in your workspace

# Merge me and other_199: my_class
my_class <- c(me, other_199)

# cbind() my_class and previous_4: last_5
last_5 <- cbind(my_class, previous_4)

# Name last_5 appropriately
nms <- paste0("year_", 1:5)
colnames(last_5) <- nms

# me, my_class and last_5 are available in your workspace

# Build histogram of my_class
hist(my_class)

# Generate summary of last_5
summary(last_5)

# Build boxplot of last_5
boxplot(last_5)

# me, my_class and last_5 are preloaded

# Is your grade equal to 72?
my_class[1] == 72

# Which grades in your class are higher than 75?
my_class > 75

# Which grades in the last 5 years are below or equal to 64?
last_5 <= 64

# me, my_class and last_5 are preloaded

# How many grades in your class are higher than 75?
sum(my_class > 75)

# How many students in your class scored strictly higher than you?
sum(my_class > me)

# What's the proportion of grades below or equal to 64 in the last 5 years?
sum(last_5 <= 64)/(5*200)

# me, my_class and last_5 are preloaded

# Is your grade greater than 87 and smaller than or equal to 89?
me > 87 & me <= 89

# Which grades in your class are below 60 or above 90?
my_class < 60 | my_class > 90

# me, my_class and last_5 are preloaded

# What's the proportion of grades in your class that is average?
sum(my_class >= 70 & my_class <= 85)/length(my_class)

# How many students in the last 5 years had a grade of 80 or 90?
sum(last_5 == 80 | last_5 == 90)
# me, my_class and last_5 are preloaded

# Define n_smart
n_smart <- sum(my_class >= 80)

# Code the if-else construct
if (n_smart > 50) {
  print("smart class")
} else {
  print("rather average")
}

# me, my_class and last_5 are preloaded

# Define prop_less
prop_less <- sum(my_class < me)/length(my_class)

# Code the control construct
if(prop_less > 0.9) {
  print("you're among the best 10 percent")
} else if(prop_less > 0.8) {
  print("you're among the best 20 percent")
} else {
  print("need more analysis")
}

# me, my_class and last_5 are preloaded

# Embedded control structure: fix the error
if (mean(my_class) < 75) {
  if (mean(my_class) > me) {
    print("average year, but still smarter than me")
  } else {
    print("average year, but I'm not that bad")
  }
} else {
  if (mean(my_class) > me) {
    print("smart year, even smarter than me")
  } else {
    print("smart year, but I am smarter")
  }
}

# me, my_class and last_5 are preloaded

# Create top_grades
top_grades <- my_class[my_class >= 85]

# Create worst_grades
worst_grades <- my_class[my_class < 65]

# Write conditional statement
if(length(top_grades) > length(worst_grades)) {
  print("top grades prevail")
}

#CHAPTER 2
# logs is already available in your workspace

# Print the structure of logs
str(logs)

# Use list subsetting to print the details part of 11th logs entry
logs[[11]]$details

# Print the class of the timestamp component of the first entry
class(logs[[1]]$timestamp)

# logs is available in your workspace

# Initialize the iterator i to be 1
i = 1

# Code the while loop
while (logs[[i]]$success == TRUE) {
  print(i)
  i <- i + 1
}

# logs is available in your workspace

# Adapt the while loop
i <- 1
while (logs[[i]]$success) {
  print(logs[[i]]$details$message)
  i <- i + 1
}

# Initialize i and found
i <- 1
found <- FALSE

# Code the while loop
while (!found) {
  if (logs[[i]]$success == FALSE && logs[[i]]$details$location == "waste") {
    print("found")
    found <- TRUE
  } else {
    print("still looking")
    i <- i + 1
  }
}

# logs is available in your workspace

# Code a for loop that prints the timestamp of each log
for (log in logs) {
  print(log$timestamp)
}

# Make the printout conditional: only if success
for (log in logs) {
  if (log$success) {
    print(log$timestamp)
  }
}

# Finish the for loop: add date element for each entry
for (i in 1:length(logs)) {
  logs[[i]]$date <- as.Date(logs[[i]]$timestamp)
}

# Print first 6 elements in logs
head(logs)

# Intialize empty list: failures
failures <- list()

# Finish the for loop: add each failure to failures
for (log in logs) {
  if (!log$success) {
    failures <- c(failures, list(log))
  }
}

# Display the structure of failures
str(failures)