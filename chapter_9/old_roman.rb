def num_to_rome(int)
  rome = []
  count = int
  until count == 0
    if count % 1000 == 0
      count -= 1000
      rome.push('M')
    elsif count % 500 == 0
      count -= 500
      rome.push('D')
    elsif count % 100 == 0
      count -= 100
      rome.push('C')
    elsif count % 50 == 0
      count -= 50
      rome.push('L')
    elsif count % 10 == 0
      count -= 10
      rome.push('X')
    elsif count % 5 == 0
      count -= 5
      rome.push('V')
    elsif count % 1 == 0
      count -= 1
      rome.push('I')
    end
  end
  rome.reverse!
return rome.join('')
end

puts "Please enter a number from 1 to 3000"
input = gets.chomp.to_i
puts
puts "The number #{input} translates to #{num_to_rome(input)} in old Roman numerals"
