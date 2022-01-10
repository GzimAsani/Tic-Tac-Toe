class Player
  attr_accessor :name, :symbol, :arr

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @arr = []
  end
end
