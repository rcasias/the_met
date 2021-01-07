require 'minitest/autorun'
require './lib/exhibit'


class ExhibitTest < Minitest::Test

  def test_exhibit_exists
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_instance_of Exhibit, exhibit
  end

  def test_attributes_work
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_equal exhibit.name, "Gems and Minerals"
    assert_equal exhibit.cost, 0
  end

end
