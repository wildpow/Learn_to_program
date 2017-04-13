def english_number(number)
  if number < 0
    "please enter a number that is not negative"
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = %w[one two three four five six seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty sixty seventy eighty ninety]
  teens = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
  zillions = [ ['hundred', 2],
               ['thousand', 3],
               ['million', 6],
               ['billion', 9],
               ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillopn', 63],
              ['googol', 100] ]

  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]

    write = left / zil_base
    left = left - write * zil_base

    if write > 0
      prefix = english_number(write)
      num_string = num_string + prefix + ' ' + zil_name
      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if write == 1 && left > 0
      num_string = num_string + teens[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

num_at_start = 1000
num_now = num_at_start

while num_now > 2
  puts "#{english_number(num_now).capitalize} bottles of beer on the wall, #{english_number(num_now)} bottles of beer!"
  num_now -= 1
  puts "Take on down, pass it around, #{english_number(num_now)} bottle of beer on the wall!"
end
puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"  