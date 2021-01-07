require 'minitest/autorun'
require './lib/patron'


class PatronTest < Minitest::Test

  def test_patron_exists
    patron_1 = Patron.new("Bob", 20)

    assert_instance_of Patron, patron_1
  end

  def test_attributes_work
    patron_1 = Patron.new("Bob", 20)

    assert_equal patron_1.name, "Bob"
    assert_equal patron_1.spending_money, 20
    assert_equal patron_1.interests, []
  end

  def test_can_add_interests
    patron_1 = Patron.new("Bob", 20)
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")

    assert_equal patron_1.interests, ["Dead Sea Scrolls", "Gems and Minerals"]
  end

end
