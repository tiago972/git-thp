class BoardCase
  attr_reader :name, :status # " " or O or X

  def initialize(name,x,y)
    @status = " "
    @name = name
  end

  def empty? #vérifie q'une case est vide
    return self.status == " " ? true : false
  end

  def change_self_status(symbol) #coche la case avec le symbol choisi
    @status = symbol
  end

  def change_win_status #change la couleur quand victoire
    if !@status.nil?
      @status =  @status.colorize(:green)
    end
  end

  def change_draw_status #change la couleur quand draw
    if !@status.nil?
      @status = @status.colorize(:yellow)
    end
  end

  def remove #détruit les instances de cases
    if !@name.nil?
      remove_instance_variable(:@name)
    end
    if !@status.nil?
      remove_instance_variable(:@status)
    end
  end

end
