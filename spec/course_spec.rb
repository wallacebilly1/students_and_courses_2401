require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})    
  end

  it 'exists' do
    expect(@course).to be_instance_of(Course)
  end

  it 'can access attribute data for a course object' do
    expect(@course.subject).to eq "Calculus"
    expect(@course.capacity).to eq 2
  end

  it 'has an empty array of students by default' do    
    expect(@course.students).to eq []
  end

  it 'returns if the course is full' do
    expect(@course.full?).to be false
  end

  it 'can #enroll students in courses' do
    @course.enroll(@student1)
    expect(@course.students).to eq [@student1]

    @course.enroll(@student2)
    expect(@course.students).to eq [@student1, @student2]
  end
end