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
  puts "Please input a student name"
  puts "Use return to exit"
  students = []
  name = gets.chomp
  # Whlie name not empty allows return to end loop  
  while !name.empty?
    students << {name: name, cohort: :november} # Shovelling in the hash format
    puts "We now have #{students.count} students!"
    name = gets.chomp
  end
  students
end
  
  
def print_header
  puts "The students of Villans Academy"
  puts "-------------"
end
# Iterate through and print the list of students
def print_(names)
  names.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Assign the return value of input_students to students
students = input_students
print_header
print_(students)
print_footer(students)

