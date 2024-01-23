require 'rspec'

class Profile
  attr_accessor :full_name, :age, :address, :work

  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end

end


describe 'Profile' do
  it 'has getters and setters' do
    my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

    expect(my_profile.full_name).to eq('Juan')

    my_profile.full_name = 'Juan Cruz'

    expect(my_profile.full_name).to eq('Juan Cruz')

    my_profile.age = 25
    my_profile.work = 'Software Engineer'

    expect(my_profile.age).to eq(25)
    expect(my_profile.work).to eq('Software Engineer')
  end
end


### Create your own object with attributes and methods

class Child
  def initialize(full_name, age, gender, hobby)
    @full_name = full_name
    @age = age
    @gender = gender
    @hobby = hobby
  end

  def introduce_myself
    puts "Hi! My name is #{@full_name} and I\'m #{@age} years old. I\'m a #{@gender} that likes #{@hobby}."
  end
end

cray = Child.new('Cray Sibulo', 7, 'boy', 'basketball')
cray.introduce_myself
