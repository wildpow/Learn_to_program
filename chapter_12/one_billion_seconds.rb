seconds_old = Time.now - Time.gm(1982,5,24,12,12,12)
minus_billion = seconds_old - 1_000_000_000
when_you_turned_billion = Time.now - minus_billion
puts "You are #{seconds_old} seconds old."
puts "You turned a billion seconds old on #{when_you_turned_billion}."
