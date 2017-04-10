bottles = 99
until bottles < 2
  puts "#{bottles} bottles of beer on the wall!"
  puts "#{bottles} bottles of beer!"
  puts "Take one down pass it arround!"
  bottles -= 1
  if bottles == 1
    break
  end
  puts "#{bottles} bottles of beer on the wall.."
end
puts "1 bottle of beer on the wall!"
puts "1 bottle of beer!"
puts "Take one down pass it arround!"
puts "No more bottles of beer on the wall.."
