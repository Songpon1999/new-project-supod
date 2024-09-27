# Create an array with 5 numbers
numbers = [7, 8, 9, 10, 11]

# Access the second element in the array
a = [88, 'Moodang', 99]
puts "the first element is #{a[0]}"

# Add a new number to the end of the array
a = [88, 'Moodang', 99]

a.push(42)

puts "The updated array is #{a.inspect}"

# Find the length of the array
a = [1, 'cat', 3.14, 42]

length_of_array = a.length

puts "The length of the array is #{length_of_array}"

# Create a hash with 3 key-value pairs (title, author, pages) representing a book
book = {title: "The Great Gatsby",author: "F. Scott Fitzgerald",pages: 180}

puts "Title: #{book[:title]}"
puts "Author: #{book[:author]}"
puts "Pages: #{book[:pages]}"

# Access the value for the key :author
book = {title: "The Great Gatsby",author: "F. Scott Fitzgerald",pages: 180}

author_name = book[:author]

puts "Author: #{author_name}"

# Add a new key :published_year with the value 1949
book = {title: "The Great Gatsby",author: "F. Scott Fitzgerald",pages: 180}

book[:published_year] = 1949

puts "Title: #{book[:title]}"
puts "Author: #{book[:author]}"
puts "Pages: #{book[:pages]}"
puts "Published Year: #{book[:published_year]}"

# Remove the key :pages from the hash
book = {title: "The Great Gatsby",author: "F. Scott Fitzgerald",pages: 180,published_year: 1949}

book.delete(:pages)

puts "Title: #{book[:title]}"
puts "Author: #{book[:author]}"
puts "Published Year: #{book[:published_year]}"

puts "Pages: #{book[:pages].nil? ? 'Key not found' : book[:pages]}"