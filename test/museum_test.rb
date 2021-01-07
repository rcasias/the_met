require 'minitest/autorun'
require './lib/museum'
require './lib/exhibit'
require './lib/patron'


class MuseumTest < Minitest::Test

  def test_museum_exists
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_instance_of Museum, dmns
  end

  def test_attributes_work
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal dmns.name, "Denver Museum of Nature and Science"
    assert_equal dmns.exhibits, []
  end

  def test_can_add_exhibit
    dmns = Museum.new("Denver Museum of Nature and Science")
    gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    imax = Exhibit.new({name: "IMAX",cost: 15})
    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)

    expect = [gems_and_minerals, dead_sea_scrolls, imax]

    assert_equal dmns.exhibits, expect
  end

  def test_can_recommend
    dmns = Museum.new("Denver Museum of Nature and Science")
    gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    imax = Exhibit.new({name: "IMAX",cost: 15})
    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)
    patron_1 = Patron.new("Bob", 20)
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")

    assert_equal dmns.recommend_exhibits(patron_1), ["Dead Sea Scrolls", "Gems and Minerals"]
  end

  def test_has_patrons
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal dmns.patrons, []
  end

  def test_can_admit_patron
    dmns = Museum.new("Denver Museum of Nature and Science")
    patron_1 = Patron.new("Bob", 0)
    patron_2 = Patron.new("Sally", 20)
    patron_3 = Patron.new("Johnny", 5)
    dmns.admit(patron_1)
    dmns.admit(patron_2)
    dmns.admit(patron_3)

    assert_equal dmns.patrons, [patron_1, patron_2, patron_3]
  end

  def test_patrons_by_exhibit_interest
    skip
    dmns = Museum.new("Denver Museum of Nature and Science")
    gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    imax = Exhibit.new({name: "IMAX",cost: 15})
    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)
    patron_1 = Patron.new("Bob", 20)
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")

      assert_equal dmns.patrons_by_exhibit_interest
  end

end
