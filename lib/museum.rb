class Museum
  attr_reader   :name,
                :exhibits,
                :new_exhibit


  def initialize(name, exhibits = {})
    @name = name
    @exhibits = {}
  end

  def add_exhibit(new_exhibit)
    @exhibits[new_exhibit.keys[0]] = [new_exhibit.values[0]]
  end




end
