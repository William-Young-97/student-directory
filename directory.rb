
# Instanced students to use across all methods
@students = []

def input_students
  puts "Use return twice to exit"
  puts "Please input a student name"
  name = gets.chomp
  puts "Please enter the cohort month"
  month = gets.chomp
  # Whlie name not empty allows return to end loop  
  while !name.empty? && !month.empty?
    @students << {name: name, cohort: month} # Shovelling in the hash format
    puts "We now have #{@students.count} students!"
    puts "Please input a student name"
    name = gets.chomp
    puts "Please enter the cohort month"
    month = gets.chomp
  end
end
  
def print_header
  puts "The students of Villans Academy"
  puts "-------------"
end
# Iterate through and print the list of students
def print_student_list
  @students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end
  
def print_menu
  puts "1. Input students"
  puts "2. List students"
  puts "3. Save students to csv file"
  puts "9. Exit"
end  

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else
    puts "Please enter a valid command"
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def interactive_menu
  loop do
  print_menu
  process(gets.chomp)
  end
end

interactive_menu
