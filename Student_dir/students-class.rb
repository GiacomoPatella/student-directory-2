class Student
  def initialize(name, course)
    @name = name
    @course = course
  end

  def to_s
    "My name is #{@name} and I'm studying #{@course}"
  end
end

erica = Student.new("Erica", :science)
puts erica.to_s