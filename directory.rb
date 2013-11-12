students = [
  {:name => "Chris", :cohort => :november},
  {:name => "Anath", :cohort => :november},
  {:name => "Simon", :cohort => :november},
  {:name => "Hannah", :cohort => :november},
  {:name => "Ken", :cohort => :november},
  {:name => "Asta", :cohort => :november},
  {:name => "G", :cohort => :november}
]


def print_header
	puts "Lovely folks of my cohort at Makers Academy:"
	puts "-----------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(students)
	puts "Overall we have #{students.length} students!"
end


print_header
print(students)
print_footer(students)




