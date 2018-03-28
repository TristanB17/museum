require "minitest/autorun"
require "minitest/pride"
require "./lib/patron"
require ".lib/museum"
require 'pry'

class TestPatron < Minitest::Test

  def test_it_exists
    patron = Patron.new("Mephisto", ["Necromancy"])

    assert_instance_of Patron, patron
  end

  def test_patron_has_a_name
    patron = Patron.new("Mephisto", ["Necromancy"])

    assert_equal "Mephisto", patron.name
  end

  def test_patron_has_interests
    patron = Patron.new("Mephisto", ["Necromancy"])

    assert_equal ["Necromancy"], patron.interests
  end

  def test_patron_can_add_interests
    patron = Patron.new("Mephisto", ["Necromancy"])

    patron.add_interest("Sorcery")

    assert_equal ["Necromancy", "Sorcery"], patron.interests
  end






end
