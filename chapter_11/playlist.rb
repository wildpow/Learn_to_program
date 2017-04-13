def shuffle(array)
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

mp3 = shuffle(Dir['/*.mp3'])

File.open 'just_two.m3u', 'w' do |i|
  mp3.each do |song|
    i.write mp3+"\n"
  end
end
puts "Done!"
