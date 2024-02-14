require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  before(:each) do
    @calculus = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
    @student3 = Student.new({name: "Tommy", age: 28})
    @student4 = Student.new({name: "Veronica", age: 23})
    @dr_math_gradebook = Gradebook.new("Dr. Math")    
  end

  it 'exists' do
    expect(@dr_math_gradebook).to be_instance_of(Gradebook)
  end

  it 'can access attribute data for a Gradebook object' do
    expect(@dr_math_gradebook.instructor).to eq "Dr. Math"
  end

  it 'has an empty array of courses upon initializing' do
    expect(@dr_math_gradebook.courses).to eq []
  end

  it 'can add courses' do
    new_course = @dr_math_gradebook.add_course(@calculus)

    expect(new_course).to eq [@calculus]
    expect(@dr_math_gradebook.courses).to eq [@calculus]
  end

  it 'can return a list of all students' do
    @calculus.enroll(@student1)
    @calculus.enroll(@student2)

    trigonometry = Course.new("Trigonometry", 4)
    trigonometry.enroll(@student3)
    trigonometry.enroll(@student4)

    @dr_math_gradebook.add_course(@calculus)
    @dr_math_gradebook.add_course(trigonometry)

    student_list = @dr_math_gradebook.list_all_students

    expect(student_list).to be_a Hash
  end
end
