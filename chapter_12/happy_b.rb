puts "Please enter the year you where born"
year = gets.chomp
puts "Please enter the month you where born"
month = gets.chomp
puts "Please enter the day you where born"
day = gets.chomp

sec_old = Time.now - Time.local(year,month,day)
years_old = sec_old / 60 / 60 /24 / 365
puts "You are #{years_old.to_i} old!"
count = years_old.to_i
count.times do |i|
  puts "SPANK!.. HAPPYBIRTHDAY!!!!! "
end
puts "#{count} Birthday spanks!"
