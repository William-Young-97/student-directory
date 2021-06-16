# Create an array of students
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

# Use methods
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

print_header
print_(students)
print_footer(students)

