## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# RStudio cannot take the sum of characters and doubles

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# RStudio requires the line library("stringr") in order to use the library that was installed previously

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# The variable initial does not exist, as the variable created earlier was initials, and not inital.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

vector.01 <- c("potato")
typeof(vector.01) # character

vector.02 <- c(1, 2, 3)
typeof(vector.02) # double

vector.03 <- c(1, 2, 3, "potato")
typeof(vector.03) # character

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(first.vector, second.vector) {
  length.difference <- abs(length(first.vector) - length(second.vector))
  phrase <- paste("The difference in lengths is", length.difference)
  return(phrase)
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(1, 2, 3)

print(CompareLength(v1, v2))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


