
count = 0
key = "BYE"
reponces_to_bye = ["MATLOCK IS COMING ON IN 35 MINUTES",
                    "BACK IN MY DAY WE MADE OUR OWN MUSIC",
                    "WHERES MY GIN AND TONIC?",
                    "WHEN ARE YOU GOING TO GET MARRIED",
                    "WHAT HAPPENED TO THAT PRETTY GIRL?",
                    "I POOPED EM"]
puts "Say hi to your grandma"
while count < 3
  input = gets.chomp
  if input == key
    puts "#{reponces_to_bye[rand(reponces_to_bye.length)]}"
    count += 1
  elsif input == input.upcase
    puts "NO, NOT SINCE #{rand(1929...1951)}!"
    count = 0
  else
    puts "HUH?! SPEAK UP, SUNNY"
    count = 0
  end
end
