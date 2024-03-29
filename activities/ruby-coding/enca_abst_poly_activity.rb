# Encapsulation

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def show_full_name
    puts first_name + " " + last_name
  end
end

spicy = Person.new('spicy','sibulo')
spicy.show_full_name


# Abstraction

class Calculator
  def initialize(num_one, num_two)
    @num_one = num_one
    @num_two = num_two
  end

  def solve
    puts add
  end

  private

  def add
    @num_one + @num_two
  end
end

test = Calculator.new(1,2)
test.solve

# Polymorphism

## Inheritance
class Living_Thing
  def sleep
    puts "Be more specific with what sleeps"
  end

  def make_sleepable()
    sleep
  end
end

class Human < Living_Thing
  def sleep
    puts "I'm a sleeping human lol"
  end
end

class Dog < Living_Thing
  def sleep
    puts "I'm a sleeping dog lol"
  end
end

class Cat < Living_Thing
  def sleep
    puts "I'm a sleeping cat lol"
  end
end

bob = Human.new
brownie = Dog.new
some_cat_name = Cat.new

bob.make_sleepable()
brownie.make_sleepable()
some_cat_name.make_sleepable()

## Duck-typing

def make_walkable(something)
  something.walk
end

class Mammal
  def walk
    puts "I'm a walking mammal lol"
  end
end

class Reptile
  def walk
    puts "I'm a walking reptile lol"
  end
end

rhino = Mammal.new
salamander = Reptile.new
make_walkable(rhino)
make_walkable(salamander)
