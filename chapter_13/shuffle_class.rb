class Array

  def shuffle
    array = self
    shuffle = []
    while array.length > 0
      index = rand(array.length)
      current_index = 0
      new_array = []
      array.each do |item|
        if current_index == index
          shuffle.push(item)
        else
          new_array.push(item)
        end
        current_index += 1
      end
      array = new_array
    end
    shuffle
  end
end

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def to_roman
    roman = ''

    roman = roman + "M" * (self / 1000)
    roman = roman + "D" * (self % 1000 / 500)
    roman = roman + "C" * (self % 500 / 100)
    roman = roman + "L" * (self % 100 / 50)
    roman = roman + "X" * (self % 50 / 10)
    roman = roman + "V" * (self % 10 / 5)
    roman = roman + "I" * (self % 5 / 1)

    roman
  end
end

puts [1,2,3,4,5,6,7,8,9].shuffle
puts 7.factorial
puts 73.to_roman
