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

# Use methods
def print_header
  puts "The students of Villans Academy"
  puts "-------------"
end
# Iterate through and print the list of students
def print_(names)
  names.each { |student| puts student }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print_(students)
print_footer(students)