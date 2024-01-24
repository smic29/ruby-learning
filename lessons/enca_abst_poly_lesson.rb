# Encapsulation
#   - bundling of data (properties, @instance_variables) and behaviors.
#   - also refers to the limiting of direct access to some of that data. => principle of least exposure
# is about bundling data and methods together within a class, emphasizing data hiding and modularity.

class Foo
  attr_reader :property_1
  def initialize(property_1, property_2)
    @property_1 = property_1
    @property_2 = property_2
  end

  def bar
    @property_1 + @property_2
  end

  private

  def helper_method; end

  # ...
end

foo = Foo.new(1,2)

# Abstraction
#   - hides complexity by giving you a more abstract picture
#   - lets you focus on what the object does instead of how it does
# is about simplifying complex systems by modeling classes based on
# essential properties and behaviors, focusing on what an object does rather than how it achieves it.

class Transaction
  def initialize(quantity, price, discount=false)
    @quantity = quantity
    @price = price
    @discount = discount
  end

  def total_transactions # This is what the object does
    total_price - get_discount
  end

  private
  # This is how the code works.
  # This complexity is already hidden.
  def total_price
    @quantity * @price
  end

  def get_discount
    @discount ? 10 : 0
  end
end

transact = Transaction.new(10, 900, true)
puts transact.total_transactions

# Polymorphism
#   - the provision of a single interface to entities of different types
#   - same methods to objects of different classes

# object1.class => Foo
# object2.class => Bar

# object1.some_method
# object2.some_method

# Achieved through Inheritance or Duck-Typing
#   In Inheritance via subclasses
#   In Duck-Typing:

class Payment
  def type(payment) # Same method names
    payment.type
  end
end

class FullyPaid
  def type
    puts "Full paid payment"
  end
end

class Installment
  def type
    puts "Installment Payments"
  end
end

customer_payment = Payment.new
full = FullyPaid.new
customer_payment.type(full)

installment = Installment.new
customer_payment.type(installment)

### Another example

class Dog
  def speak
    "Woof!"
  end
end

class Cat
  def speak
    "Meow!"
  end
end

class Duck
  def speak
    "Quack!"
  end
end

def make_speak(animal)
  puts animal.speak
end

dog = Dog.new
cat = Cat.new
duck = Duck.new

make_speak(dog)  # Outputs: Woof!
make_speak(cat)  # Outputs: Meow!
make_speak(duck) # Outputs: Quack!
