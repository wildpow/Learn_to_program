def input_check(var, name_type)
  while var == nil || var == "" || var.to_i != 0
    puts "What is your #{name_type} name again?"
    var = gets.chomp.capitalize
  end
  var
end

puts "What is your first name?"
first_name = input_check(gets.chomp,"first")
puts "and your middle name?"
middle_name = input_check(gets.chomp,"middle")
puts "and finally your last name?"
last_name = input_check(gets.chomp,"last")

puts "Welcome #{first_name} #{middle_name} #{last_name} to the book Learn to program by Chris Pine."
