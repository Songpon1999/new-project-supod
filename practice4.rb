# Write a method that takes a block and prints "Hello, World!"
def greet(&block)
  puts "Hello, World!"
  block.call if block_given? 
end

greet do
  puts "This is from the block!"
end

# Write a method that takes a block and prints numbers 1 to 5
def print_numbers(&block)
  (1..5).each do |number|
    puts number
    block.call(number) if block_given?  
  end
end

print_numbers do |num|
  puts "This number is: #{num}"
end

# count_numbers { |num| puts num }
def count_numbers(&block)
  (1..5).each do |num|
    block.call(num) if block_given?  
  end
end

count_numbers { |num| puts num }

# Write a method that uses yield with a block that accepts two parameters
def calculate(a, b)
  yield(a, b)  
end

calculate(5, 3) do |x, y|
  sum = x + y
  puts "The sum of #{x} and #{y} is #{sum}."
end

# multiply { |a, b| puts a * b }
def multiply(a, b)
  yield(a, b)
end

multiply(4, 5) do |a, b|
  puts a * b  
end

# Write a method that checks if a block is provided and executes it
def check_block(&block)
  if block_given?
    puts "A block was provided!"
    block.call
  else
    puts "No block was provided."
  end
end

check_block do
  puts "This is the block execution!"
end

check_block

# greet # Output: No block given
def greet(&block)
  if block_given?
    block.call
  else
    puts "No block given."
  end
end

greet

# greet { puts "Hello, World!" } # Output: Hello, World!
def greet(&block)
  if block_given?
    block.call 
  else
    puts "No block given."
  end
end

greet { puts "Hello, World!" }
