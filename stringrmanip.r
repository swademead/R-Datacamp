#CHAPTER 1
# Define line1
line1 <- "The table was a large one, but the three were all crowded together at one corner of it:"

# Define line2
line2 <- '"No room! No room!" they cried out when they saw Alice coming.'

# Define line3
line3 <- "\"There's plenty of room!\" said Alice indignantly, and she sat down in a large arm-chair at one end of the table."

# Putting lines in a vector
lines <- c(line1, line2, line3)

# Print lines
lines

# Use writeLines() on lines
writeLines(lines)

# Write lines with a space separator
writeLines(lines, sep = " ")

# Use writeLines() on the string "hello\n\U1F30D"
writeLines("hello\n\U1f30D")

# Should display: To have a \ you need \\
writeLines("To have a \\ you need \\\\")

# Should display: 
# This is a really 
# really really 
# long string
writeLines("This is a really really \nreally \nlong string")

# Use writeLines() with 
# "\u0928\u092e\u0938\u094d\u0924\u0947 \u0926\u0941\u0928\u093f\u092f\u093e"
writeLines("\u0928\u092e\u0938\u094d\u0924\u0947 \u0926\u0941\u0928\u093f\u092f\u093e")

# Some vectors of numbers
percent_change  <- c(4, -1.91, 3.00, -5.002)
income <-  c(72.19, 1030.18, 10291.93, 1189192.18)
p_values <- c(0.12, 0.98, 0.0000191, 0.00000000002)

# Format c(0.0011, 0.011, 1) with digits = 1
format(c(0.0011, 0.011, 1), digits = 1)

# Format c(1.0011, 2.011, 1) with digits = 1
format(c(1.001, 2.011, 1), digits = 1)

# Format percent_change to one place after the decimal point
format(percent_change, digits = 2)

# Format income to whole numbers
format(income, digits = 2)

# Format p_values in fixed format
format(p_values, scientific = FALSE)

# From the format() exercise
x <- c(0.0011, 0.011, 1)
y <- c(1.0011, 2.011, 1)

# formatC() on x with format = "f", digits = 1
formatC(x, format = "f", digits = 1)

# formatC() on y with format = "f", digits = 1
formatC(y, format = "f", digits = 1)

# Format percent_change to one place after the decimal point
formatC(percent_change, format = "f", digits = 1)

# percent_change with flag = "+"
formatC(percent_change, format = "f", digits = 1, flag = "+")

# Add $ to pretty_income
paste("$",pretty_income, sep = "")
 
# Add % to pretty_percent
paste(pretty_percent, "%", sep = "")

# Create vector with elements like 2010: +4.0%
year_percent <- paste(years, paste(pretty_percent, "%", sep = ""), sep = ": ")

# Collapse all years into single string
paste(year_percent, collapse = ", ")

# Define the names vector
income_names <- c("Year 0", "Year 1", "Year 2", "Project Lifetime")

# Create pretty_income
pretty_income <- format(income, digits = 2, big.mark = ",")

# Create dollar_income
dollar_income <- paste("$", pretty_income, sep ="")

# Create formatted_names
formatted_names <- format(income_names, justify = "right")

# Create rows
rows <- paste(formatted_names, dollar_income, sep = "   ")

# Write rows
writeLines(rows)

# Randomly sample 3 toppings
my_toppings <- sample(toppings, size = 3)

# Print my_toppings
my_toppings

# Paste "and " to last element: my_toppings_and
my_toppings_and <- paste(c("", "", "and "), my_toppings, sep = "")

# Collapse with comma space: these_toppings
these_toppings <- paste(my_toppings_and, collapse = ", ")

# Add rest of sentence: my_order
my_order <- paste("I want to order a pizza with ", these_toppings, ".", sep = "")

#CHAPTER 2
library(stringr)

my_toppings <- c("cheese", NA, NA)
my_toppings_and <- paste(c("", "", "and "), my_toppings, sep = "")

# Print my_toppings_and
my_toppings_and

# Use str_c() instead of paste(): my_toppings_str
my_toppings_str <- str_c(c("", "", "and "), my_toppings)

# Print my_toppings_str
my_toppings_str

# paste() my_toppings_and with collapse = ", "
paste(my_toppings_and, collapse = ", ")

# str_c() my_toppings_str with collapse = ", "
str_c(my_toppings_str, collapse = ", ")

library(stringr)
library(babynames)
library(dplyr)

# Extracting vectors for boys' and girls' names
babynames_2014 <- filter(babynames, year == 2014)
boy_names <- filter(babynames_2014, sex == "M")$name
girl_names <- filter(babynames_2014, sex == "F")$name

# Take a look at a few boy_names
head(boy_names)

# Find the length of all boy_names
boy_length <- str_length(boy_names)

# Take a look at a few lengths
head(boy_names)

# Find the length of all girl_names
girl_length <- str_length(girl_names)

# Find the difference in mean length
mean(boy_length) - mean(girl_length)

# Confirm str_length() works with factors
head(str_length(factor(boy_names)))

# Extract first letter from boy_names
boy_first_letter <- str_sub(boy_names, 1, 1)

# Tabulate occurrences of boy_first_letter
table(boy_first_letter)
  
# Extract the last letter in boy_names, then tabulate
boy_last_letter <- str_sub(boy_names, -1, -1)
table(boy_last_letter)

# Extract the first letter in girl_names, then tabulate
girl_first_letter <- str_sub(girl_names, 1, 1)
table(girl_first_letter)

# Extract the last letter in girl_names, then tabulate
girl_last_letter <- str_sub(girl_names, - 1, -1)
table(girl_last_letter)

# Look for pattern "zz" in boy_names
contains_zz <- str_detect(boy_names, pattern = "zz")

# Examine str() of contains_zz
str(contains_zz)

# How many names contain "zz"?
sum(contains_zz)

# Which names contain "zz"?
boy_names[contains_zz]

# Which rows in boy_df have names that contain "zz"?
boy_df[contains_zz, ]

# Find boy_names that contain "zz"
str_subset(boy_names, pattern = "zz")

# Find girl_names that contain "zz"
str_subset(girl_names, pattern = "zz")

# Find girl_names that contain "U"
starts_U <- str_subset(girl_names, pattern = "U")
starts_U

# Find girl_names that contain "U" and "z"
str_subset(starts_U, pattern = "z")

# Count occurrences of "a" in girl_names
number_as <- str_count(girl_names, pattern = "a")

# Count occurrences of "A" in girl_names
number_As <- str_count(girl_names, pattern = "A")

# Histograms of number_as and number_As
hist(number_as)
hist(number_As)  

# Find total "a" + "A"
total_as <- number_as + number_As

# girl_names with more than 4 a's
girl_names[total_as > 4]

date_ranges <- c("23.01.2017 - 29.01.2017", "30.01.2017 - 06.02.2017")

# Split dates using " - "
split_dates <- str_split(date_ranges, pattern = fixed(" - "))

# Print split_dates
split_dates

# Split dates with n and simplify specified
split_dates_n <- str_split(date_ranges, pattern = fixed(" - "), n = 2, simplify = TRUE)
split_dates_n

# Subset split_dates_n into start_dates and end_dates
start_dates <- split_dates_n[, 1]
end_dates <- split_dates_n[, 2]

# Split start_dates into day, month and year pieces
str_split(start_dates, pattern = fixed("."), n = 3, simplify = TRUE)

# Split both_names into first_names and last_names
both_names <- c("Box, George", "Cox, David")
both_names_split <- str_split(both_names, pattern = fixed(", "), n = 2, simplify = TRUE)
first_names <- str_split(both_names_split[, 2], pattern = ", ")
last_names <- str_split(both_names_split[, 1], pattern = ", ")

# Split lines into words
words <- str_split(lines, pattern = " ")

# Number of words per line
lapply(words, length)
  
# Number of characters in each word
word_lengths <- lapply(words, str_length)
  
# Average word length per line
lapply(word_lengths, mean)

ids <- c("ID#: 192", "ID#: 118", "ID#: 001")

# Replace "ID#: " with ""
id_nums <- str_replace_all(ids, "ID#: ", "")

# Turn id_nums into numbers
id_ints <- as.numeric(id_nums)
  
# Some (fake) phone numbers
phone_numbers <- c("510-555-0123", "541-555-0167")

# Use str_replace() to replace "-" with " "
str_replace(phone_numbers, "-", " ")

# Use str_replace_all() to replace "-" with " "
str_replace_all(phone_numbers, "-", " ")

# Turn phone numbers into the format xxx.xxx.xxxx
str_replace_all(phone_numbers, "-", "." )

# Find the number of nucleotides in each sequence
str_length(genes)

# Find the number of A's occur in each sequence
str_count(genes, fixed("A"))

# Return the sequences that contain "TTTTTT"
str_subset(genes, fixed("TTTTTT"))

# Replace all the "A"s in the sequences with a "_"
str_replace_all(genes, fixed("A"), "_")

# --- Task 1 ----
# Define some full names
names <- c("Diana Prince", "Clark Kent")

# Split into first and last names
names_split <- str_split(names, fixed(" "), simplify = TRUE)

# Extract the first letter in the first name
abb_first <- str_sub(names_split[, 1], 1, 1)

# Combine the first letter ". " and last name
paste(abb_first, names_split[, 2], sep = ". ")

# --- Task 2 ----
# Use all names in babynames_2014
all_names <- babynames_2014$name

# Get the last two letters of all_names
last_two_letters <- str_sub(all_names, -2, -1)

# Does the name end in "ee"?
ends_in_ee <- str_detect(last_two_letters, fixed("ee"))

# Extract rows and "sex" column
sex <- babynames_2014$sex[ends_in_ee]

# Display result as a table
table(sex)

#CHAPTER 3
library(rebus)
library(stringr)

# Some strings to practice with
x <- c("cat", "coat", "scotland", "tic toc")

# Print END
END

# Run me
str_view(x, pattern = START %R% "c")

# Match the strings that start with "co" 
str_view(x, pattern = START %R% "co")

# Match the strings that end with "at"
str_view(x, pattern = "at" %R% END)

# Match the strings that is exactly "cat"
str_view(x, pattern = START %R% "cat" %R% END)

x <- c("cat", "coat", "scotland", "tic toc")

# Match any character followed by a "t"
str_view(x, pattern = ANY_CHAR %R% "t")

# Match a "t" followed by any character
str_view(x, pattern = "t"%R% ANY_CHAR)

# Match two characters
str_view(x, pattern = ANY_CHAR %R% ANY_CHAR)

# Match a string with exactly three characters
str_view(x, pattern = START %R% ANY_CHAR %R% ANY_CHAR %R% ANY_CHAR %R% END)

# q followed by any character
pattern <- "q" %R% ANY_CHAR

# Test pattern 
str_view(c("Quentin", "Kaliq", "Jacques",  "Jacqes"), pattern)  

# Find names that have the pattern
names_with_q <- str_subset(boy_names, pattern)
length(names_with_q)

# Find part of name that matches pattern
part_with_q <- str_extract(boy_names, pattern)
table(part_with_q)

# Did any names have the pattern more than once?
count_of_q <- str_count(boy_names, pattern)
table(count_of_q)

# Which babies got these names?
with_q <- str_detect(boy_names, pattern)

# What fraction of babies got these names?
mean(with_q)

# Match Jeffrey or Geoffrey
whole_names <- or("Jeffrey", "Geoffrey")
str_view(boy_names, pattern = whole_names, 
  match = TRUE)

# Match Jeffrey or Geoffrey, another way
common_ending <- or("Je", "Geo") %R% "ffrey"
str_view(boy_names, pattern = common_ending, 
  match = TRUE)

# Match with alternate endings
by_parts <- or("Je", "Geo") %R% "ff" %R% or("ry", "ery", "rey", "erey")
str_view(boy_names, 
  pattern = by_parts, 
  match = TRUE)

# Match names that start with Cath or Kath
ckath <- or("C", "K") %R% "ath"
str_view(girl_names, pattern = ckath, match = TRUE)

# Create character class containing vowels
vowels <- char_class("aeiouAEIOU")

# Print vowels
vowels

# See vowels in x with str_view()
str_view(x, vowels)

# See vowels in x with str_view_all()
str_view_all(x, vowels)

# Number of vowels in boy_names
num_vowels <- str_count(boy_names, vowels)
mean(num_vowels)

# Proportion of vowels in boy_names
name_length <- str_length(boy_names)
mean(num_vowels/name_length)

# Vowels from last exercise
vowels <- char_class("aeiouAEIOU")

# Use `negated_char_class()` for everything but vowels
not_vowels <- negated_char_class("aeiouAEIOU")

# See names with only vowels
str_view(boy_names, 
  pattern = exactly(one_or_more(vowels)), 
  match = TRUE)

# See names with no vowels
str_view(boy_names, 
  pattern = exactly(one_or_more(not_vowels)), 
  match = TRUE)

  # Take a look at ALL digits
str_view_all(contact, pattern = DGT)

# Create a three digit pattern and test
three_digits <- DGT %R% DGT %R% DGT
str_view_all(contact,
  pattern = three_digits)

# Create four digit pattern
four_digits <- three_digits %R% DGT

# Create a separator pattern and test
separator <-  char_class("-.(,) ")
str_view_all(contact,
  pattern = separator)

# Create phone pattern
phone_pattern <- optional(OPEN_PAREN) %R%
  three_digits %R%
  zero_or_more(separator) %R%
  three_digits %R% 
  zero_or_more(separator) %R%
  four_digits
      
# Test pattern           
str_view(contact, phone_pattern)

# Extract phone numbers
str_extract(contact, phone_pattern)

# Extract ALL phone numbers
str_extract_all(contact, phone_pattern)

# Look for two digits
str_view(narratives, DGT %R% DGT)

# Pattern to match one or two digits
age <- or(DGT %R% DGT, DGT)
str_view(narratives, 
  pattern = age)

# Pattern to match units 
unit <- optional(" ") %R% or("YO", "YR", "MO")

# Test pattern with age then units
str_view(narratives, 
  pattern = age %R% unit)

# Pattern to match gender
gender <- optional(" ") %R% or("M", "F")

# Test pattern with age then units then gender
str_view(narratives, 
  pattern = age %R% unit %R% gender)

# Extract age_gender, take a look
age_gender <- str_extract(narratives, age %R% unit %R% gender)
age_gender

# age_gender, age, gender, unit are pre-defined
ls.str()

# Extract age and make numeric
ages_numeric <- as.numeric(str_extract(narratives, age))

# Replace age and units with ""
genders <- str_replace(age_gender, 
  pattern = age %R% unit, 
  replacement = "")

# Replace extra spaces
genders_clean <- str_replace_all(genders, 
  pattern = " ", 
  replacement = "")

# Extract units 
time_units <- str_extract(age_gender, unit)

# Extract first word character
time_units_clean <- str_extract(time_units, WRD)

# Turn ages in months to years
ages_years <- ifelse(time_units_clean == "Y", ages_numeric, ages_numeric/12)

#CHAPTER 4
# age_gender, age, gender, unit are pre-defined
ls.str()

# Extract age and make numeric
ages_numeric <- as.numeric(str_extract(narratives, age))

# Replace age and units with ""
genders <- str_replace(age_gender, 
  pattern = age %R% unit, 
  replacement = "")

# Replace extra spaces
genders_clean <- str_replace_all(genders, 
  pattern = " ", 
  replacement = "")

# Extract units 
time_units <- str_extract(age_gender, unit)

# Extract first word character
time_units_clean <- str_extract(time_units, WRD)

# Turn ages in months to years
ages_years <- ifelse(time_units_clean == "Y", ages_numeric, ages_numeric/12)

# View text containing phone numbers
contact

# Add capture() to get digit parts
phone_pattern <- capture(three_digits) %R% zero_or_more(separator) %R% 
           capture(three_digits) %R% zero_or_more(separator) %R%
           capture(four_digits)
           
# Pull out the parts with str_match()
phone_numbers <- str_match(contact, phone_pattern)

# Put them back together
str_c(
  "(",
  phone_numbers[, 2],
  " )",
  phone_numbers[, 3],
  "-",
  phone_numbers[, 4])

  # narratives has been pre-defined
narratives

# Add capture() to get age, unit and sex
pattern <- capture(optional(DGT) %R% DGT) %R%  
  optional(SPC) %R% capture(or("YO", "YR", "MO")) %R%
  optional(SPC) %R% capture(or("M", "F"))

# Pull out from narratives
str_match(narratives, pattern)

# Edit to capture just Y and M in units
pattern2 <- capture(optional(DGT) %R% DGT) %R%  
  optional(SPC) %R% capture(or("Y", "M")) %R% optional(or("O","R")) %R%
  optional(SPC) %R% capture(or("M", "F"))

# Check pattern
str_view(narratives, pattern2)

# Pull out pieces
str_match(narratives, pattern2)

# See names with three repeated letters
repeated_three_times <- capture(LOWER) %R% REF1 %R% REF1
str_view(boy_names, 
  pattern = repeated_three_times, 
  match = TRUE)

# See names with a pair of repeated letters
pair_of_repeated <- capture(LOWER %R% LOWER) %R% REF1
str_view(boy_names, 
  pattern = pair_of_repeated, 
  match = TRUE)

# See names with a pair that reverses
pair_that_reverses <- capture(LOWER) %R% capture(LOWER) %R% REF2 %R% REF1
str_view(boy_names, 
  pattern = pair_that_reverses, 
  match = TRUE)

# See four letter palindrome names
four_letter_palindrome <- exactly(pair_that_reverses)
str_view(boy_names, 
  pattern = four_letter_palindrome, 
  match = TRUE)

# See six letter palindrome names
six_letter_palindrome <- exactly(capture(LOWER) %R% capture(LOWER) %R% capture(LOWER) %R% REF3 %R% REF2 %R% REF1)
str_view(boy_names, 
  pattern = six_letter_palindrome, 
  match = TRUE)

# View text containing phone numbers
contact

# Replace digits with "X"
str_replace(contact, pattern = DGT, replacement = "X")

# Replace all digits with "X"
str_replace_all(contact, pattern = DGT, replacement = "X")

# Replace all digits with different symbol
str_replace_all(contact, pattern = DGT, 
  replacement = c("X", ".", "*", "_"))

# Build pattern to match words ending in "ING"
pattern <- "ING"
str_view(narratives, pattern)

# Test replacement
str_replace(narratives, capture(pattern), str_c("CARELESSLY", REF1, sep = " "))

# One adverb per narrative
adverbs_10 <- sample(adverbs, 10)

# Replace "***ing" with "adverb ***ing"
str_replace(narratives, capture(pattern), str_c(adverbs_10, REF1, sep = " "))

# Names with builtin accents
(tay_son_builtin <- c(
  "Nguy\u1ec5n Nh\u1ea1c", 
  "Nguy\u1ec5n Hu\u1ec7",
  "Nguy\u1ec5n Quang To\u1ea3n"
))

# Convert to separate accents
tay_son_separate <- stri_trans_nfd(tay_son_builtin)

# Verify that the string prints the same
tay_son_separate

# Match all accents
str_view_all(tay_son_separate, UP_DIACRITIC)

# tay_son_separate has been pre-defined
tay_son_separate

# View all the characters in tay_son_separate
str_view_all(tay_son_separate, ANY_CHAR)

# View all the graphemes in tay_son_separate
str_view_all(tay_son_separate, GRAPHEME)

# Combine the diacritics with their letters
tay_son_builtin <- stri_trans_nfc(tay_son_separate)

# View all the graphemes in tay_son_builtin
str_view_all(tay_son_builtin, GRAPHEME)

#CHAPTER 5
library(stringi)
library(stringr)

# Read play in using stri_read_lines()
earnest <- stri_read_lines("importance-of-being-earnest.txt")

# Detect start and end lines
start <- which(str_detect(earnest, pattern = "START OF THE PROJECT"))
end   <- which(str_detect(earnest, pattern = "END OF THE PROJECT"))

# Get rid of gutenberg intro text
earnest_sub  <- earnest[(start + 1):(end - 1)]

# Detect first act
lines_start <- which(str_detect(earnest_sub, pattern = "FIRST ACT"))

# Set up index
intro_line_index <- 1:(lines_start - 1)

# Split play into intro and play
intro_text <- earnest_sub[intro_line_index]
play_text <-  earnest_sub[-intro_line_index]

# Take a look at the first 20 lines
writeLines(play_text[1:20])

# Pattern for start word then .
pattern_1 <- START %R% one_or_more(WRD) %R% DOT

# Test pattern_1
str_view(play_lines, pattern = pattern_1, 
  match = TRUE) 
str_view(play_lines, pattern = pattern_1, 
  match = FALSE)

# Pattern for start, capital, word then .
pattern_2 <- START %R% ascii_upper() %R% one_or_more(WRD) %R% DOT

# View matches of pattern_2
str_view(play_lines, pattern_2, match = TRUE)

# View non-matches of pattern_2
str_view(play_lines, pattern_2, match = FALSE)

# Get subset of lines that match
lines <- str_subset(play_lines, pattern = pattern_2)

# Extract match from lines
who <- str_extract(lines, pattern = pattern_2)

# Let's see what we have
unique(who)

# Create vector of characters
characters <- c("Algernon", "Jack", "Lane", "Cecily", "Gwendolen", "Chasuble", 
  "Merriman", "Lady Bracknell", "Miss Prism")

# Match start, then character name, then .
pattern_3 <- START %R% or1(characters) %R% DOT

# View matches of pattern_3
str_view(play_lines, pattern_3, match = TRUE)
  
# View non-matches of pattern_3
str_view(play_lines, pattern_3, match = FALSE)

# Pull out matches
lines <- str_subset(play_lines, pattern_3)

# Extract match from lines
who <- str_extract(lines, pattern_3)

# Let's see what we have
unique(who)

# Count lines per character
table(who)

# catcidents has been pre-defined
head(catcidents)

# Construct pattern of DOG in boundaries
whole_dog_pattern <- whole_word("DOG")

# View matches to word "DOG"
str_view(catcidents, whole_dog_pattern, match = TRUE)

# Transform catcidents to upper case
catcidents_upper <- lapply(catcidents, toupper)

# View matches to word "DOG" again
str_view(catcidents_upper, whole_dog_pattern, match = TRUE)


# Which strings match?
has_dog <- str_detect(catcidents_upper, whole_dog_pattern)

# Pull out matching strings in original 
catcidents[has_dog]

# View matches to "TRIP"
str_view(catcidents, "TRIP", match = TRUE)

# Construct case insensitive pattern
trip_pattern <- regex("TRIP", ignore_case = TRUE)

# View case insensitive matches to "TRIP"
str_view(catcidents, trip_pattern, match = TRUE)

# Get subset of matches
trip <- str_subset(catcidents, trip_pattern)

# Extract matches
str_extract(trip, trip_pattern)

library(stringi)

# Get first five catcidents
cat5 <- catcidents[1:5]

# Take a look at original
writeLines(cat5)

# Transform to title case
writeLines(str_to_title(cat5))

# Transform to title case with stringi
writeLines(stri_trans_totitle(cat5))

# Transform to sentence case with stringi
writeLines(stri_trans_totitle(cat5, type = "sentence"))