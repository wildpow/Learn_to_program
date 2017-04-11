require 'pry'

puts "let me find all the leap years in a range of years you give me."
puts "Enter a starting year"
starting_year = gets.chomp.to_i
puts "Enter a ending year"
ending_year = gets.chomp.to_i
puts "Here are the leap years."

start = starting_year
  while start <= ending_year
    if start % 4 == 0
      if start % 100 != 0 || start % 400 == 0
        puts start
      end
    end
    start += 1
  end
