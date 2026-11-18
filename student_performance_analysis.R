# Create student dataset

student_data <- data.frame(
  student_id = 1:10,
  study_hours = c(2, 3, 4, 5, 1, 6, 7, 3, 8, 5),
  score = c(58, 62, 68, 72, 55, 78, 85, 64, 90, 75)
)

print(student_data)
# Check dataset

head(student_data)

str(student_data)

dim(student_data)

summary(student_data)
# Extract student scores

student_data$score
student_data$study_hours
student_data$student_id
student_data$score
# First student

student_data[1, ]
# First student

student_data[3, ]
student_data[1, 3]
# Calculate statistics

mean(student_data$score)

max(student_data$score)

min(student_data$score)

median(student_data$score)

summary(student_data$score)
# Calculate statistics

mean(student_data$score)

max(student_data$score)

min(student_data$score)

median(student_data$score)

summary(student_data$score)
library(ggplot2)

ggplot(student_data, aes(x = study_hours, y = score)) +
  geom_point() +
  labs(
    title = "Study Hours and Student Scores",
    x = "Study Hours",
    y = "Student Score"
  )
library(ggplot2)
# Find students with scores above 80

high_scores <- student_data[
  student_data$score >= 80,
]

print(high_scores)
students_pass <- student_data[
  student_data$score >= 70,
]

print(students_pass)

# Sort students by score

sorted_students <- student_data[
  order(student_data$score),
]

print(sorted_students)

# Sort students from highest to lowest

top_students <- student_data[
  order(student_data$score, decreasing = TRUE),
]

print(top_students)
top_three <- head(top_students, 3)

print(top_three)
