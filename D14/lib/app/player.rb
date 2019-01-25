class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @symbol = symbol
    @name = name.capitalize
  end

  def remove #détruit les instances de joueurs
    if !@name.nil?
      remove_instance_variable(:@name)
    end
    if !@nsymbol.nil?
      remove_instance_variable(:@symbol)
    end
  end
end
