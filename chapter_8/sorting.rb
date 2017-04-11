array = []
while true
  puts "Please enter one word, then hit enter."
  input = gets.chomp

  if input == ""
   break
 end
 array.push(input)
 end

puts "Here is a sorted array"
puts array.sort
