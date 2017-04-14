class OrangeTree

  def initialize
    @tree_height = 0
    @tree_age = 0
    @orange_count = 0
    puts "You planted a new little baby tree!"
  end


  def height
    puts "Your tree is now #{@tree_height} tall!"
    if @tree_height >= 5
      @orange_count = @orange_count + (@tree_age - 3)
    end
    return @tree_height
  end

  def one_year_passes
    @tree_age += 1
    @tree_height += 1
    puts "Your tree is alittle old and alittle taller"
    height
    if @tree_age == 15
      @tree_height = 0
      puts "Oh..no your tree is dead!"
      exit
    end
  end

  def count_the_oranges
    puts "Your tree has #{@orange_count} oranges."
    @orange_count
  end
end

new_tree = OrangeTree.new
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.count_the_oranges
new_tree.height
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.count_the_oranges
new_tree.height
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
new_tree.one_year_passes
