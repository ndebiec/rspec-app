class Dog
  attr_reader :balls
  
  def bark
    return 'Woof!'
  end
  
  def initialize
    @balls = 0
  end

  def fetch(balls_thrown)
    @balls += balls_thrown
  end

end

print Dog.new.bark