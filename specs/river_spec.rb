require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')




class RiverTest < MiniTest::Test

  def setup
   @fish1 = Fish.new("Marty the Mackerel")
   @fish2 = Fish.new("Saul the Salmon")
   @fish3 = Fish.new("Pete the Pollock")
   @fish4 = Fish.new("Bill the Bass")

   @fish = [@fish1, @fish2, @fish3, @fish4]

   @river = River.new("Nile", @fish)



 end

 def test_fish_has_name
   assert_equal("Bill the Bass", @fish4.name)
   assert_equal("Saul the Salmon", @fish2.name)
 end

 def test_fish_count
   assert_equal(4, @river.fish_count)
 end

 def test_can_find_fish_by_name
   fish = @river.find_fish_by_name("Marty the Mackerel")
   assert_equal("Marty the Mackerel", fish.name)
 end

 def test_can_remove_fish
   @river.remove_fish(@fish1)
   assert_equal(3, @river.fish_count)
 end



 # def test_can_take_fish_from_river
 #   bear = Bear.new("Smokey", :grizzly)
 #   @river.take_fish_from_river(@fish1, bear)
 #   assert_equal(1, bear.belly_count)
 #   assert_equal(3, @river.fish_count)
 # end




end
