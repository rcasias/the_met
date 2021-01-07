require 'pry'
class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons= []

  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  # def recommend_exhibits(patron)
  #   exhibits_to_recommend = []
  #   @exhibits.each do |exhibit|
  #     if patron.interests == exhibit
  #       exhibits_to_recommend << exhibit
  #     end
  #     #binding.pry
  #   end
  #   exhibits_to_recommend
  # end

  def admit(patron)
    @patrons << patron
  end

end
