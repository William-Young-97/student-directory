# Create an array of students
=begin
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Nurse Rached", cohort: :november},
 {name: "Micheal Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Witch of The West", cohort: :november},
 {name: "Terminator", cohort: :november},
 {name: "Freddy Kreuger", cohort: :november},
 {name: "The Joker", cohort: :november},
 {name: "Jeoffrey Baratheon", cohort: :november},
 {name: "Norman Bates", cohort: :november}
]
=end

# Use methods

def input_students
  students = []
  puts "Type q to exit"
  puts "Please input a student name"
  name = gets.chomp.capitalize
  puts "Please enter the cohort month"
  month = gets.chomp.capitalize.to_sym
  month = "June" if month.empty?
  puts "Please enter your hobby"
  hobby = gets.chomp
  # Whlie name not empty allows return to end loop  
  while !name.empty?
    students << {name: name, cohort: month, hobbies: hobby} # Shovelling in the hash format
    puts "We now have #{students.count} students!"
    puts "Please input a student name"
  name = gets.chomp.capitalize
  puts "Please enter the cohort month"
  month = gets.chomp.capitalize.to_sym
  month = "June" if month.empty?
  puts "Please enter your hobby"
  hobby = gets.chomp
  end
  students
end
  
  
def print_header
  puts "The students of Villans Academy"
  puts "-------------"
end
# Iterate through and print the list of students
def print_(names)
  names.each { |student| puts "#{student[:name]} is in the #{student[:cohort]} cohort.\n#{student[:name]} likes #{student[:hobbies]}."}
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Assign the return value of input_students to students
students = input_students
print_header
print_(students)
print_footer(students)

