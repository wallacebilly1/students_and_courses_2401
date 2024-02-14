class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
    @courses
  end

  def list_all_students
    @courses.map do |course|
      {course => course.students}
    end.reduce({}, :merge)
  end

  def students_below(threshold)
    student_list = list_all_students.values.flatten
    student_list.select do |student|
      student.grade < threshold
    end
  end
end
