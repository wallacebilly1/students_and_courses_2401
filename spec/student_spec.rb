require 'rspec'
require './lib/student'

RSpec.describe Student do
  it 'exists' do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
  end

  it 'can access attribute data for a student object' do
    morgan = Student.new({name: "Morgan", age: 21})

    expect(morgan.name).to eq "Morgan"
    expect(morgan.age).to eq 21
  end

  it 'has a blank array of scores when initialized' do
    morgan = Student.new({name: "Morgan", age: 21})

    expect(morgan.scores).to eq []
  end

  it 'can add scores to the scores array' do
    morgan = Student.new({name: "Morgan", age: 21})

    morgan.log_score(89)
    morgan.log_score(78)

    expect(morgan.scores).to eq [89, 78]
  end

  it 'can average scores to create an overall grade' do
    morgan = Student.new({name: "Morgan", age: 21})

    morgan.log_score(89)
    morgan.log_score(78)

    expect(morgan.grade).to eq 83.5
  end
end
