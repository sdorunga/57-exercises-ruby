require_relative "greeting"

greeter = Greeting.new
loop do
  puts "Hi, what's your name?"
  answer = gets.chomp()
  p greeter.message(answer)
end
