# Character vector for grade classifications
Student_classifications <- c(
  "Sophomore", "Sophomore", "Sophomore", "Freshman", "Sophomore", 
  "Junior", "Junior", "Freshman", "Junior", "Freshman", 
  "Sophomore", "Sophomore", "Junior", "Sophomore", "Junior", 
  "Senior", "Sophomore", "Freshman", "Junior", "Senior", 
  "Sophomore", "Junior", "Freshman", "Sophomore", "Freshman", 
  "Sophomore", "Sophomore", "Junior", "Junior", "Sophomore", 
  "Sophomore", "Freshman", "Sophomore", "Sophomore", "Freshman", 
  "Freshman", "Sophomore", "Freshman", "Sophomore", "Sophomore", 
  "Sophomore", "Junior", "Sophomore", "Freshman", "Sophomore", 
  "Junior", "Freshman", "Sophomore", "Sophomore", "Freshman", 
  "Junior", "Sophomore", "Freshman", "Sophomore", "Freshman", 
  "Sophomore", "Junior", "Junior", "Freshman", "Senior", 
  "Freshman", "Sophomore", "Sophomore", "Sophomore", "Sophomore", 
  "Sophomore", "Junior"
)

print("Grade level of those who participated in the study: ")
print(Student_classifications)

# Numeric vector for ratings
ratings <- c( 
  8, 7, 4, 6, 7, 7, 4, 7, 4, 7, 6, 6, 4, 7, 5, 6, 4, 6, 7, 3, 
  7, 8, 4, 6, 8, 5, 6, 6, 6, 6, 4, 6, 3, 3, 6, 6, 7, 4, 3, 4, 
  7, 7, 7, 6, 8, 5, 7, 8, 8, 4, 6, 4, 6, 4, 7, 4, 8, 6, 7, 5, 
  7, 9, 9, 6, 7, 6, 6
)

print("Ratings of those who participated in the study: ")
print(ratings)

# Count the number of elements in each vector
Student_count <- length(Student_classifications)
print(paste0("There are ", Student_count, " students represented in this survey"))

Freshman_target <- "Freshman"
Sophomore_target <- "Sophomore"
Junior_target <- "Junior"
Senior_target <- "Senior"
count <- 0

# Function to count Freshmen
Freshman_count <- function(Freshman_target, count) 
{
  for (i in seq_along(Student_classifications))
  {
    if (Student_classifications[i] == Freshman_target) 
    {
      count <- count + 1
    }
  }
  return(count)
}

print(paste0("Out of the ", Student_count, " students, ", Freshman_count(Freshman_target, count), " of them are Freshmen."))

# Function to count Sophomores
Sophomore_count <- function(Sophomore_target, count) 
{
  for (i in seq_along(Student_classifications)) 
  {
    if (Student_classifications[i] == Sophomore_target) 
    {
      count <- count + 1
    }
  }
  return(count)
}

print(paste0("Out of the ", Student_count, " students, ", Sophomore_count(Sophomore_target, count), " of them are Sophomores."))

# Function to count Juniors
Junior_count <- function(Junior_target, count) 
{
  for (i in seq_along(Student_classifications)) 
  {
    if (Student_classifications[i] == Junior_target) 
    {
      count <- count + 1
    }
  }
  return(count)
}

print(paste0("Out of the ", Student_count, " students, ", Junior_count(Junior_target, count), " of them are Juniors."))

# Function to count Seniors
Senior_count <- function(Senior_target, count) 
{
  for (i in seq_along(Student_classifications)) 
  {
    if (Student_classifications[i] == Senior_target) 
    {
      count <- count + 1
    }
  }
  return(count)
}

print(paste0("Out of the ", Student_count, " students, ", Senior_count(Senior_target, count), " of them are Seniors."))

# Summary of grade classifications(Rounded to the enarest integer)
print("Descriptive Statistics of student ratings:")
print(summary(ratings))

# Bar and pie charts representing the makeup of students in the classroom.
barplot(table(Student_classifications), main = "Barplot of Student Classifications", col = "lightgreen")
pie(table(Student_classifications), main = "Pie Chart of Student Classifications")

# Histogram and boxplox of student ratings.
hist(ratings, main = "Histogram of Ratings", col = "lightgreen", xlab = "Ratings", breaks = 10)
par(mfrow=c(1,2))
boxplot(ratings, main = "Boxplot of Ratings", col = "blue")
