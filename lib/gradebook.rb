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
end
