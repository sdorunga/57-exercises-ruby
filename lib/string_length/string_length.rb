def string_length(input, output)
  output.puts "What is the input string?"

  answer = input.gets().chomp

  output.puts answer + " has " + answer.length.to_s + " characters."
end
