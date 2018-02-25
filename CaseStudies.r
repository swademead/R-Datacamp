#CHAPTER 1
# Import sales.csv: sales
sales <- read.csv("sales.csv", stringsAsFactors = FALSE)

# View dimensions of sales
dim(sales)

# Inspect first 6 rows of sales
head(sales)

# View column names of sales
names(sales)

# Look at structure of sales
str(sales)

# View a summary of sales
summary(sales)

# Load dplyr
library(dplyr)

# Get a glimpse of sales
glimpse(sales)

# Remove the first column of sales: sales2
sales2 <- sales[,-1]

# Define a vector of column indices: keep
keep <-c(5:30)

# Subset sales2 using keep: sales3
sales3 <- sales2[,keep]

# Load tidyr
library(tidyr)

# Split event_date_time: sales4
sales4 <- separate(sales3, event_date_time,
                   c("event_dt","event_time"), sep = " ")

# Split sales_ord_create_dttm: sales5
sales5 <- separate(sales4, sales_ord_create_dttm, c("ord_create_dt","ord_create_time"), sep = " ")

# Define an issues vector
issues <- c(2516, 3863, 4082, 4183)

# Print values of sales_ord_create_dttm at these indices
sales3$sales_ord_create_dttm[issues]

# Print a well-behaved value of sales_ord_create_dttm
sales3$sales_ord_create_dttm[2517]

# Load stringr
library(stringr)

# Find columns of sales5 containing "dt": date_cols
date_cols <- str_detect(names(sales5), "dt")

# Load lubridate
library(lubridate)

# Coerce date columns into Date objects
sales5[, date_cols] <- lapply(sales5[,date_cols], ymd)

# Find date columns (don't change)
date_cols <- str_detect(names(sales5), "dt")

# Create logical vectors indicating missing values (don't change)
missing <- lapply(sales5[, date_cols], is.na)

# Create a numerical vector that counts missing values: num_missing
num_missing <- sapply(missing, sum)

# Print num_missing
num_missing

# Combine the venue_city and venue_state columns
sales6 <- unite(sales5, venue_city_state, venue_city, venue_state, sep = ", ")


# View the head of sales6
head(sales6)

#CHAPTER 2
# Load readxl
library(readxl)

# Import mbta.xlsx and skip first row: mbta
mbta <- read_excel("mbta.xlsx", skip = 1)

# View the structure of mbta
str(mbta)

# View the first 6 rows of mbta
head(mbta)

# View a summary of mbta
summary(mbta)

# Load tidyr
library(tidyr)

# Gather columns of mbta3: mbta4
mbta4 <- gather(mbta3, month, thou_riders, -mode)

# View the head of mbta4
head(mbta4)

# Coerce thou_riders to numeric
mbta4$thou_riders <- sapply(mbta4$thou_riders, as.numeric)

# Spread the contents of mbta4: mbta5
mbta5 <- spread(mbta4, mode, thou_riders)

# View the head of mbta5
head(mbta5)

# View the head of mbta5
head(mbta5)

# Split month column into month and year: mbta6
mbta6 <- separate(mbta5, month, c("month", "year"), sep = "-")

# View the head of mbta6
head(mbta6)
# View a summary of mbta6
summary(mbta6)

# Generate a histogram of Boat column
hist(mbta6$Boat)

# Find the row number of the incorrect value: i
i <- which(mbta6$Boat == 40)

# Replace the incorrect value with 4
mbta6$Boat[i] <- 4

# Generate a histogram of Boat column
hist(mbta6$Boat)

# Look at Boat and Trackless Trolley ridership over time (don't change)
ggplot(mbta_boat, aes(x = month, y = thou_riders, col = mode)) +  geom_point() + 
  scale_x_discrete(name = "Month", breaks = c(200701, 200801, 200901, 201001, 201101)) + 
  scale_y_continuous(name = "Avg Weekday Ridership (thousands)")

# Look at all T ridership over time (don't change)
ggplot(mbta_all, aes(x = month, y = thou_riders, col = mode)) + geom_point() + 
  scale_x_discrete(name = "Month", breaks = c(200701, 200801, 200901, 201001, 201101)) +  
  scale_y_continuous(name = "Avg Weekday Ridership (thousands)")