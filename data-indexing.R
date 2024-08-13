# ----------
# EDS 221: Day 2b
# Takeen Shamloo
# August 13th, 2024
# ----------

# Subsetting ----
x <- c(2.1, 4.2, 3.3, 5.4)

x[c(3, 1)]

x[order(x)]

# Duplicate indices will duplicate values
x[c(1, 1)]

# Real numbers are silently truncated to integers
x[c(2.1, 2.9)]

x[-c(3, 1)]

#x[c(-1, 2)] can't have a -1 in our vector of indices

x[c(TRUE, TRUE, FALSE, FALSE)]

x[x > 3]

x[c(TRUE, FALSE)]

# Equivalent to
x[c(TRUE, FALSE, TRUE, FALSE)]

x[c(TRUE, TRUE, NA, FALSE)]

x[]

x[0]

# Assignments ----
x <- 1:5
x[c(1, 2)] <- 2:3
x 

x[-1] <- 4:1
x

# x[c(1, NA)] <- c(1, 2) can't put NA with integers

x[c(T, F, NA)] <- 1
x

df <- data.frame(a = c(1, 10, NA))
df$a[df$a < 5] <- 0
df$a

# Logical Subsetting ----
mtcars[mtcars$gear == 5, ]

mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]

subset(mtcars, gear == 5)

subset(mtcars, gear == 5 & cyl == 4)