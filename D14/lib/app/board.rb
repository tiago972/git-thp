require 'app/board_case'
require 'views/board_view'

$WINS = [
  ["A1","A2","A3"], ["B1","B2","B3"], ["C1","C2","C3"],  # Horizontal wins
  ["A1","B1","C1"], ["A2","B2","C2"], ["A3","B3","C3"],  # Vertical wins
  ["C1","B2","A3"], ["C3","B2","A1"],   # Diagonal wins
]

class Board

  def initialize #9 cases et une view de board
    @caseA1 = BoardCase.new("A1",1,3)
    @caseA2 = BoardCase.new("A2",2,3)
    @caseA3 = BoardCase.new("A3",3,3)
    @caseB1 = BoardCase.new("B1",1,2)
    @caseB2 = BoardCase.new("B2",2,2)
    @caseB3 = BoardCase.new("B3",3,2)
    @caseC1 = BoardCase.new("C1",1,1)
    @caseC2 = BoardCase.new("C2",2,1)
    @caseC3 = BoardCase.new("C3",3,1)
    @b_view = BoardView.new
  end

  def print_board #éléments visuels du board
    @b_view.top
    @b_view.line("A",@caseA1.status,@caseA2.status,@caseA3.status)
    @b_view.separate
    @b_view.line("B",@caseB1.status,@caseB2.status,@caseB3.status)
    @b_view.separate
    @b_view.line("C",@caseC1.status,@caseC2.status,@caseC3.status)
    @b_view.bottom
  end

  def empty_casses #retourne un array des cases vides
    cases_array = []
    ObjectSpace.each_object(BoardCase) do |c|
      if c.empty?
        cases_array << c
      end
    end
      return cases_array
  end

  def change_case_status(choice,symbol) #coche une case
    ObjectSpace.each_object(BoardCase) do |c|
      if c.name == choice
        c.change_self_status(symbol)
      end
    end
  end

  def check_end(player) #return win ou draw si la partie est terminée
    result = check_win(player)
    if !result.nil? && result[0] == "win"
      return result
    elsif empty_casses.empty?
      return "draw"
    end
  end

  def check_win(player) #vérifie si un joueur a gagné
    symbol_array = []
    ObjectSpace.each_object(BoardCase) do |c|
      if c.status == player.symbol
        symbol_array << c.name
      end
    end
    $WINS.each do |win|
      if (win - symbol_array).empty?
        puts "win:"
        puts win
        puts "symbole"
        puts symbol_array
        return "win", win
      end
    end
    return false, ""
  end

  def board_win(end_grid) #change le visuel des cases en cas de victoire
    ObjectSpace.each_object(BoardCase) do |c|
      end_grid.each do |position|
        if c.name == position
          c.change_win_status
         end
      end
    end
  end

  def board_draw #change le visuel des cases en cas de draw
    ObjectSpace.each_object(BoardCase) do |c|
          c.change_draw_status
      end
  end
end
