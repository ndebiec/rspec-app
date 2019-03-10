class Dog
  attr_reader :balls
  
  def bark
    return 'Woof!'
  end
  
  def initialize(hunger_level = 0)
    @balls = 0
    @hunger_level = hunger_level
  end

  def fetch(balls_thrown)
    @balls += balls_thrown
  end

  def hungry?
    @hunger_level > 5
  end

end

print Dog.new.bark