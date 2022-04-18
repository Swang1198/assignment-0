# Load the the `stringr` package 
install.packages('stringr')

# Create a numeric variable `my_age` that is equal to your age
# Create a variable `my_name` that is equal to your first name
# Using multiplication, create a variable `minutes_in_a_day` that is
# equal to the number of minutes in a day
# Using multiplication, create a variable `hours_in_a_year` that is
# equal to the number of hours in a year

my_age <- 19
my_name <- 'Simon'
minutes_in_a_day <- 60 * 24
hours_in_a_year <- 24 * 365

# Write a function `make_introduction()` that takes in two args (`name`, `age`) 
# This function should return a string value that says:
# Hello, my name is {name}, and I'm {age} years old.
# The values {name} and {age} should take on the values passed into the function 
# Make sure that proper spacing is used (e.g., you shouldn't have multiple
# spaces between words, and you should a space after a comma)
# Create a variable `my_intro` by passing your variables `my_name` and `my_age`
# into your `make_introduction()` function
# Using the `str_count` function, create a variable `occurrences` that stores
# the # of times the letter "e" appears in `my_intro`

make_introduction <- function(name,age) {
  return(paste("Hello, my name is ",name," and I'm",age,"years old"))
}
my_intro <- make_introduction(my_name, my_age)
occurances <- str_count(my_intro, "e")

# Create a function `inches_to_cm` that converts from inches to centimeters and 
# returns the converted value in cm
# Create a variable `inches_tall` that is your (numeric) height in inches
# Using your `inches_to_cm` function and your `inches_tall` variable, 
# create a variable `cm_tall` that is your height in centimeters

inches_to_cm <- function (inches) {
  return(inches * 2.54)
}
inches_tall <- 70
cm_tall <- inches_to_cm (70)

# Write a function `has_more_zs` to determine which of two strings contains 
# more instances of the letter "z". It should take as parameters two string
# variables, and return the argument which has more occurances of the letter "z"
# If neither phrase contains the letter "z", it should return:
# "Neither string contains the letter z."
# If the phrases contain the same number of "z"s, it should return:
# "The strings have the same number of Zs." 
# The function must work for both capital and lowercase "z"s. 

has_more_zs <- function (string1, string2) {
  stringone <- str_count(string1, "z")
  stringtwo <- str_count(string2, "z")
  if(stringone == 0 & stringtwo == 0){
    return("Neither string contains the letter z.")
  }
  else if(stringone == stringtwo){
    return("The strings have the same number of Zs.")
  }
  
# Create a variable `more_zs` by passing two strings of your choice to your
# `has_more_zs` function
# Write a function `remove_digits` that will remove all digits
# (i.e., 0 through 9) from all elements in a *vector of strings*.
# Demonstrate that your approach is successful by passing a vector of courses
# to your function. For example, remove_digits(c("INFO 201", "CSE 142"))
  
more_zs <- has_more_zs("zoo", "zebra")

remove_digits <- function(vectorstrings) {
  x <- "0123456789"
}

remove_digits (c("econ 300", "info 201"))

# Write a function `fluidConversion()` that takes in one numeric arg (`fluid_oz`) 
# that converts any number of fluid ounces to the equivalent 
# number of gallons, quarts, pints, and gills. Your function should print the 
# calculated number of gallons, quarts, pints, and gills on one line; be sure to
# add appropriate labels to the display values so the user knows what the value 
# means (e.g. if the user enters 6523 fluid ounces, you should display “6523 
# fluid ounces is 50 gallon(s), 3 quart(s), 1 pint(s), and 2 gill(s)). Use the 
# following hints for your conversion: 
# There are 128 fluid ounces in a gallon.
# There are 32 fluid ounces in a quart.
# There are 16 fluid ounces in a pint.
# There are 4 fluid ounces in a gill.
# The modulo (a.k.a. remainder) operator in R is %% and will show the remainder 
# left after an integer division. 

fluid_Conversion <- function(fluid_oz) 
gallons <- floor (fluid_oz / 128)
quarts <- floor ((fluid_oz %% 128) / 32)
pints <- floor (((fluid_oz %% 128) %% 32) / 16)
gills <- floor ((((fluid_oz %% 128) %% 32) %% 16) / 4)
 

# Write a function `parks_and_rec()` that takes in two args (`weeks`, `hrs`) to 
# calculate how many episodes of the show "Parks and Rec" you can watch within a
# given time frame. The weeks arg is how many weeks they have to watch and the
# hrs arg is how many hours of TV they watch a day. Assuming that each episode 
# is 21 minutes long, how many episodes can the user watch? 
# Return the number of episodes as an numeric type.

parks_and_rec <- function(weeks, hrs) {
minutes_per_day <- hrs * 60
episodes_per_day <- minutes_per_day / 21
episodes_per_week <- episodes_per_day * 7
total_episodes <- episodes_per_week * weeks
  return(total_episodes)
}

# Create a vector `movies` that contains the names of six movies you like
# Create a vector `top_three` that only contains the first three movies
# You should do this by subsetting the vector, not by simply retyping the movies
# Using your vector and the `paste()` method, create a vector `excited` that
# adds the phrase - " is a great movie!" to the end of each element `movies`
# Create a vector `without_four` by omitting the fourth element from `movies`
# You should do this using a _negative index_ 

movies <- c("Harry Potter", "The Avengers", "Jurassic World", "La La land", "Pirates of the Caribbean", "The Titanic")
top_three <- movies [1:3]
excited <- paste(movies,c(" is a great movie"))
without_four <- movies [-4]


