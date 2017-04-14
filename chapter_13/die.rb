class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(num)
    if num > 6 || num < 0
      puts "What is this a school for ants!"
    else
      puts "Cheater!"
      @number_showing = num
    end
  end
end

dice = [Die.new, Die.new]

dice.each do |die|
  puts die.roll
end
puts Die.new.showing
puts
die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
puts
cheater = Die.new
puts cheater.cheat(4)
puts cheater.cheat(9)
