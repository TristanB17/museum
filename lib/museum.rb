class Museum
  attr_reader   :name,
                :exhibits


  def initialize(name, exhibits = {})
    @name = name
    @exhibits = {}
  end

  def add_exhibits(new_exhibit, price)
    @exhibits = Hash[new_exhibit => price]
  end




end
