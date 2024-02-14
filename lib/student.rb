class Student
  attr_reader :name, :age, :scores

  def initialize(student_data)
    @name = student_data[:name]
    @age = student_data[:age]
    @scores = []
  end
end
