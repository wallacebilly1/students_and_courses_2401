require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})    
  end

  it 'exists' do
    gradebook = Gradebook.new
    expect(gradebook).to be_instance_of(Gradebook)
  end
end
