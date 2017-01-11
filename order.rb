#order.rb

class Order
  attr_accessor :content

  def initialize()
    @content = []
  end

  def add(pizza)
    @content << pizza
  end

  def value
    # p @content.inspect
    @content.reduce(0){|sum, pizza| sum + pizza.price }
  end

  def print()
    puts "Your order is:"
    puts "-----"*10
    @content.each do |pizza|
      puts "#{pizza.name}: #{pizza.price}"
    end
    puts "-----"*10
  end

end
