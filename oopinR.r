#CHAPTER 1
# Create these variables
a_numeric_vector <- rlnorm(50)
a_factor <- factor(
  sample(c(LETTERS[1:5], NA), 50, replace = TRUE)
)
a_data_frame <- data.frame(
  n = a_numeric_vector,
  f = a_factor
)
a_linear_model <- lm(dist ~ speed, cars)

# Call summary() on the numeric vector
summary(a_numeric_vector)

# Do the same for the other three objects
summary(a_factor)
summary(a_data_frame)
summary(a_linear_model)

# Look at the definition of type_info()
type_info

# Create list of example variables
some_vars <- list(
  an_integer_vector = rpois(24, lambda = 5),
  a_numeric_vector = rbeta(24, shape1 = 1, shape2 = 1),
  an_integer_array = array(rbinom(24, size = 8, prob = 0.5), dim = c(2, 3, 4)),
  a_numeric_array = array(rweibull(24, shape = 1, scale = 1), dim = c(2, 3, 4)),
  a_data_frame = data.frame(int = rgeom(24, prob = 0.5), num = runif(24)),
  a_factor = factor(month.abb),
  a_formula = y ~ x,
  a_closure_function = mean,
  a_builtin_function = length,
  a_special_function = `if`
)

# Loop over some_vars calling type_info() on each element to explore them
lapply(some_vars, type_info)

# Explore the structure of chess
str(chess)

# Override the class of chess
class(chess) <- "chess_game"

# Is chess still a list?
is.list(chess)

# How many pieces are left on the board?
length(unlist(chess))

#CHAPTER2
# Create get_n_elements
get_n_elements <- function(x, ...) {
  UseMethod("get_n_elements")
}

# View get_n_elements
get_n_elements

# Create a data.frame method for get_n_elements
get_n_elements.data.frame <- function(x, ...) {
  nrow(x) * ncol(x)
}

# Call the method on the sleep dataset
n_elements_sleep <- get_n_elements.data.frame(sleep)

# View the result
n_elements_sleep

# View pre-defined objects
ls.str()

# Create a default method for get_n_elements
get_n_elements.default <- function(x, ...) {
  length(unlist(x))
}

# Call the method on the ability.cov dataset
n_elements_ability.cov <- get_n_elements.default(ability.cov)

# Find methods for print
methods("print")

# View the structure of hair
str(hair)

# What primitive generics are available?
.S3PrimitiveGenerics

# Does length.hairstylist exist?
exists("length.hairstylist")

# What is the length of hair?
length(hair)

# Inspect your workspace
ls.str()

# cat method
what_am_i.cat <- function(x, ...)
{
  # Write a message
  message("I'm a cat")
  # Call NextMethod
  NextMethod("what_am_i")
}

# mammal method
what_am_i.mammal <- function(x, ...)
{
  # Write a message
  message("I'm a mammal")
  # Call NextMethod
  NextMethod("what_am_i")
}

# character method
what_am_i.character <- function(x, ...)
{
  # Write a message
  message("I'm a character vector")
}

# Call what_am_i()
what_am_i(kitty)