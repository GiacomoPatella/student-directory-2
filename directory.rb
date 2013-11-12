student_count = 9

students = [
  "Chris",
  "Anath",
  "Simon",
  "Hannah",
  "Ken",
  "Asta",
  "G"
]

#We print a list of students
puts "Lovely folks of my cohort at Makers Academy:"

puts "-----------"

students.each do |student|
	puts student
end

puts "Overall we have #{students.length} students!"

