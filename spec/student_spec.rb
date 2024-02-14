require 'rspec'
require './lib/student'

RSpec.describe Student do
  it 'exists' do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
  end

  it 'can access attribute data for a student object' do
    morgan = Student.new({name: "Morgan", age: 21})

    expect(morgan.name).to be "Morgan"
    expect(morgan.age).to be 21
  end

  
end
