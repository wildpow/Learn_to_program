require 'pry'

puts "let me find all the leap years in a range of years you give me."
puts "Enter a starting year"
starting_year = gets.chomp.to_i
puts "Enter a ending year"
ending_year = gets.chomp.to_i

leap_years = (starting_year..ending_year).to_a
puts leap_years
  leap_years.each do |i|
    if i & 4 == 0
      leap_years.pop(i)
    end
  end
  binding.pry 
