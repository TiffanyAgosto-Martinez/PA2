# graded2.R
# Tiffany Agosto-Martinez
# 9/10/2026
# Element Extraction and Vector Operations

# create a vector to represent the populations in the years 2000 and 2010
a2000 <- c(4447100, 626932, 5130932, 2673400)
a2000

a2010 <- c(4779735, 710231, 6329013, 2915921)
a2010

# use cbind to create 4x2 matrix of the two vectors
m <- cbind(a2000, a2010)
m

# create a vector containing the percentage increase in each state population
p_increase <- (m[, 2] - m[, 1]) / m[, 1]
p_increase

# create a vector predicting the 2020 population increase
a2020 <- m[,2] * (1 + p_increase)
a2020

# use cbind to add 2020 vector and overwrite original matrix with new matrix
m <- cbind(m, a2020)
m