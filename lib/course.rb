class Course
  attr_reader :subject, :capacity, :students

  def initialize(subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end

  def full?
    @students.count >= @capacity
  end

  def enroll(student)
    @students << student
  end
 
end
