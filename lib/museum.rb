class Museum
  attr_reader   :name,
                :exhibits


  def initialize(name, exhibits = {})
    @name = name
    @exhibits = {}
  end

  def add_exhibits
    @exhibits[exhibits.keys[0]] = exhibits.values[0]
    # @exhibits[exhibits] = exhibits
  end




end
