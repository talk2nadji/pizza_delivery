#main.rb

require_relative "menu.rb"
require_relative "order.rb"

menu = Menu.new()
order = Order.new()
done = false

puts "Hello, welcome to our pizza express delivery"

while not done

  puts "What can i do for you?"
  puts "1) Order a pizza"
  puts "2) Nothing"
  puts "3) Check out (E #{order.value})" if order.value > 0
  puts "-----"*10

  #get input from user
  choice = gets.chomp.to_i
  case choice
  when 1
    menu.print()
    pizza = menu.make_choice()
    order.add(pizza)
  when 2
    done = true
  else
    puts "I don\'t understand"
  end

  #say goodby when customer is leaving
  if done
    puts "Thank you for your visit! hope to see you again soon."
    puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _ \"-._"
    puts "||    _ (_)    '-."
    puts "||   (_)   __..-'"
    puts " \\__..--\"\""
  end

end
