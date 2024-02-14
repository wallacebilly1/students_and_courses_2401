require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exists' do
    course = Course.new("Calculus", 2)

    expect(course).to be_instance_of(Course)
  end

  it 'can access attribute data for a course object' do
    course = Course.new("Calculus", 2)
    
    expect(course.subject).to eq "Calculus"
    expect(course.capacity).to eq 2
  end

  it 'has an empty array of students by default' do
    course = Course.new("Calculus", 2)
    
    expect(course.students).to eq []
  end

  it 'returns if the course is full' do
    course = Course.new("Calculus", 2)

    expect(course.full?).to be false
  end
end