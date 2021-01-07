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

  def recommend_exhibits(patron)
    exhibits_to_recommend = []
    @exhibits.each do |exhibit|
      patron.interests.each do |interest|
# binding.pry
        if interest == exhibit.name
          exhibits_to_recommend << exhibit.name
        end

      end
    end
    exhibits_to_recommend
  end

  def admit(patron)
    @patrons << patron
  end

  # def patrons_by_exhibit_interest
  #   interest = {}
  #   @exhibits.each do |exhibit|
  #     exhibit.patron.each do |patron|
  #       if interest[patron.interest].nil?
  #         interest[patron.interest] = [patron]
  #       elsif !interest[patron.interest].include?(patron)
  #         interest[patron.interest] << patron
  #       end
  #     end
  #   end
  #     interest
  # end

end
