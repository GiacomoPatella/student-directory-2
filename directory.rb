def print_header
        puts "Lovely folks of my cohort at Makers Academy:"
        puts "-----------"
end


# def type #you can create a method "type" so then you just call it and omit the puts
#   "Type the names of the students:"
# end

def input_students
  puts "Type the names of the students:"
  puts "To finish just hit return twice!"

  students = []

  name = gets.chomp

  while !name.empty? do
  students << { :name => name, :cohort => :november }
  puts "Now we have #{students.length} students"
  name = gets.chomp
  end
  students #if you comment this out: directory.rb:23:in `print_footer': undefined method `length' for nil:NilClass (NoMethodError)
  #necessary to return the array
end

def print_footer(students)
        puts "Overall we have #{students.length} students!"
end

# type
students = input_students
print(students)
print_footer(students)

