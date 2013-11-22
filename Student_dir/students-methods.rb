require 'json'

@students = []
File.open("students.json") do |f|
  @students = JSON.parse(f.read, :symbolize_names=>true) #Json returns an array so if I put the shovel it would return an array of arrays
end

def save_students(students)
  File.open('students.json','w') do |f|
    f.write @students.to_json
  end
end

def add
  puts  "What student do you want to add?"
  student_name = gets.chomp.capitalize
  student = @students.detect {|student| student[:name] == student_name}
  if student
      puts "Student already there."
  else
    student = {}
      student[:name] = student_name
      puts "Race?"
      race = gets.chomp
      student[:race] = race.to_sym
      puts "Choose your weapon:"
      weapon = gets.chomp.capitalize
      student[:weapon] = weapon
      @students << student
      save_students(@students) #try with and
      puts "#{student_name} has been added to the database!"
    end
end

def update
  puts "What student you want to update?"
  student_name = gets.chomp.capitalize
  student = @students.detect {|student| student[:name] == student_name}
  if student
    puts "Type student weapon:"
    weapon = gets.chomp
    student[:weapon] = weapon
    save_students(@students)
    puts "#{student_name} has been updated with new weapon: #{weapon}."
  else
    puts "Student not found."
  end
end

def delete
  puts "What student do you want to delete?"
  student_name = gets.chomp.capitalize
    student = @students.detect {|student| student[:name] == student_name}
    if student
      @students.delete(student)
      save_students(@students) 
      puts "#{student_name} has been deleted."
    else
      "Student not found."
    end
end

def display
  @students.each do |student|
      puts "#{student[:name]} (#{student[:race]} cohort, weapon of choice: #{student[:weapon]})"
    end
end


puts "Hello! Welcome to the Makers Academy Database."
puts "============"
puts "What would you like to do?"

puts "Type 'add' to add a student."
puts "Type 'update' to update student information."
puts "Type 'delete' to delete a student."
puts "Type 'display' to display the database."

choice = gets.chomp.downcase

while !choice.empty? do
  case choice
  when 'add' then add
  when 'update' then update
  when 'delete' then delete
  when 'display' then display
  else
    puts "What do you mean? Please type that again."
  end
  choice = gets.chomp.downcase
end


















