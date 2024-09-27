number = 10  # You can change this value to test

if number.even?
  puts "#{number} is even."
else
  puts "#{number} is odd."
end

squared = number ** 2
puts "The square of #{number} is #{squared}."

# Write a program that checks if a number is positive, negative, or zero
number = 10 

if number > 0
  puts "#{number} is positive."
elsif number < 0
  puts "#{number} is negative."
else
  puts "#{number} is zero."
end

# Write a program that checks if a number is even or odd
number = 10 

if number.even?
  puts "#{number} is even."
else
  puts "#{number} is odd."
end

# Write a while loop that counts from 1 to 10
count = 1 

while count <= 10
  puts count
  count += 1 
end

# Write a while loop to print the first 5 even numbers
count = 1       
even_numbers = []  

while even_numbers.length < 5
  if count.even?   
    even_numbers << count  
  end
  count += 1  
end

puts "The first 5 even numbers are: #{even_numbers.join(', ')}"