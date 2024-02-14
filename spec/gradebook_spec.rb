require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
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
end
