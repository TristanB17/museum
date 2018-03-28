

class Patron
  attr_reader   :name,
                :interests

  def initialize(name, interests = ["no interests"])
    @name = name
    @interests = interests
  end

  def add_interest(new_interest)
    @new_interest = new_interest
    @interests << @new_interest
    binding.pry
  end

end
