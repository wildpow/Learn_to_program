require 'yaml' # inporting YAML from starndard library

test_array = ['Give quiche A Chance', 'Mutants Out!', 'chameleonic Life-Forms, No Thanks']

test_string = test_array.to_yaml # converts test_string to YAML String

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f| # opens file and write YAML test_string
  f.write test_string
end

read_string = File.read filename # reads file

read_array = YAML::load read_string # converts saved string back to array

puts read_string == test_string
puts read_array == test_array
