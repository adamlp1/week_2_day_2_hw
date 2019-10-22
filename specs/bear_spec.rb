require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')


class BearTest < MiniTest::Test

  def setup
    @food = @fish1
    @bear1 = Bear.new("Paddington", :brown)
    @bear2 = Bear.new("Smokey", :grizzly)
    @bear3 = Bear.new("Pooh", :teddy)
  end

  def test_bear_has_name
    assert_equal("Paddington", @bear1.name)
  end

  def test_bear_belly_is_empty
    assert_equal(0, @bear1.belly_count)
  end

  def test_bear_has_type
    assert_equal(:grizzly, @bear2.type)
  end

  def test_take_fish_from_river
    @bear1.add_fish(@fish1)
    assert_equal(1, @bear1.belly_count)
  end




  # def test_bear_has_fish
  #   assert_equal(1, @bear1.)


end
