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

def print_header
	puts "Lovely folks of my cohort at Makers Academy:"
	puts "-----------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} students!"
end


puts print_header
puts print(students)
puts print_footer(students)





