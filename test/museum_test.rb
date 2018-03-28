require "minitest/autorun"
require "minitest/pride"
require "./lib/patron"
require "./lib/museum"
require 'pry'

class TestMuseum < Minitest::Test

  def test_it_exists
    museum = Museum.new("The Cave of Wonders")

    assert_instance_of Museum, museum
  end

  def test_museum_has_a_name
    museum = Museum.new("The Cave of Wonders")

    assert_equal "The Cave of Wonders", museum.name
  end

  def test_museum_starts_with_no_exhibits
    museum = Museum.new("The Cave of Wonders")

    assert_equal({}, museum.exhibits)
  end

  def test_museum_can_have_exhibits
    museum = Museum.new("The Cave of Wonders")

    museum.add_exhibits("The Magical Mystery Tour", 10)
    assert_equal({"The Magical Mystery Tour" => 10}, museum.add_exhibits("The Magical Mystery Tour", 10))
  end


end
