class Student
  attr_reader :name, :age
  
  def initialize(student_data)
    @name = student_data[:name]
    @age = student_data[:age]
  end
end
