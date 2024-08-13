# -------------------------------
# EDS 221: Day 2a
# By: Takeen Shamloo
# Date: August 13th, 2024
# -------------------------------

# Creating vectors ----
dogs <- c("teddy", "khora", "waffle", "banjo") # character vector
typeof(dogs) # returns variable type
class(dogs) # returns variable class

weights <- c(50, 55, 25, 35) # numeric vector
typeof(weights) # since we didn't use L we know it defaults to type double
class(weights) # double is a numeric class

dog_age <- c(5L, 6L, 1L, 7L)
typeof(dog_age)
class(dog_age)
is.numeric(dog_age) # checks to see if its a number

# Combining variable types ----
dog_info <- c("teddy", 50, 5L) # if string/char is in there all others default to string/char as well
dog_info
typeof(dog_info)
class(dog_info)
is.character(dog_info) 

# Named vector elements ----
dog_food <- c(teddy = "purina", khora = "alpo", waffle = "fancy feast", banjo = "blue diamond")
dog_food
typeof(dog_food)
class(dog_food)

# Vector access/traversal using '[]' ----
dog_food[2] # second element in vector dog_food
dog_food["khora"] # finds element names "khora" in our vector

# Specifying a range 
cars <- c("red", "orange", "white", "blue", "green", "silver", "black")
cars[5] 
cars[2:4] # accessing elements from position 2 to 4 exclusive

# Getting ready for for-loops ----
i <- 4
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "BURRITOS!"
cars

# Matrices ----
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE) # declares 2x2 matrix with values listed in c() by col
typeof(fish_size) # returns type of values
class(fish_size)

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk
typeof(dog_walk) # did the same thing when applied to just a vector where it defaults to string/char when one string/char value is in the matrix
class(dog_walk)

# Matrix access/traversal using '[]' ----
whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), ncol = 2, nrow = 2, byrow = TRUE)
whale_travel

# Access value 1348
whale_travel[1, 2] # row 1, col 2

# Access value 46.9
whale_travel[2, 1] # row 2 col 1

# By leaving row or col (not both) blank it will get all the elements from that row or column respectively.
whale_travel[2, ] # grabs all of row 2
whale_travel[, 1] # grabs all of col 1
whale_travel[3] # grabs element 3 bycol 

# Lists ----
urchins <- list("blue", c(1, 2, 3), c("a cat", "a dog"), 5L)
urchins

# Accessing our list ----
urchins[[2]] # returns variables stored in the 2nd element of our list
urchins[2] # returns the list at our 2nd element

# Naming list items ----
tacos <- list(toppings = c("onion", "cilantro", "guacamole"), filling = c("beans", "meat", "veggie"), price = c(6.75, 8.25, 9.50))
tacos

tacos[[2]] # returns values in 2nd elements vector
tacos$filling # does the same thing but we can access it this way because we named the elements of our list

# Data frames ----
fruit <- data.frame(type = c("apple", "banana", "peach"), mass = c(130, 195, 150))
fruit
class(fruit)

# Data frame access/traversal ----
fruit[1, 2] # similar to matrix traversal
fruit[3, 1]

fruit[2, 1] <- "pineapple" # Set data.frame row 2 col 1 element to 'pineapple'
fruit


