# Create an array of students
students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Rached",
 "Micheal Corleone",
 "Alex DeLarge",
 "The Wicked Witch of The West",
 "Terminator",
 "Freddy Kreuger",
 "The Joker",
 "Jeoffrey Baratheon",
 "Norman Bates",
]

# puts title
puts "The students of Villans Academy"
puts "-------------"

# Iterate through and print the list of students
students.each { |student| puts student }

# puts a string using string interpolation 
puts "Overall, we have #{students.count} great students"
