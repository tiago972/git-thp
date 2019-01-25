require 'app/board'
require 'app/player'
require 'app/garbage_collector'
require 'views/play_view'


class Game

  def initialize #crée une view d'intéraction avec les joueurs + 2 players avec leurs pseudos
    @p_view = PlayView.new
    @playerA = Player.new(@p_view.choose_name("A"),"X".colorize(:light_blue))
    @playerB = Player.new(@p_view.choose_name("B"),"O".colorize(:light_red))
    while @playerB.name == @playerA.name
      puts "Merci de choisir deux pseudos différents"
      @playerB = Player.new(@p_view.choose_name("B"),"O".colorize(:light_red))
    end
    @board = Board.new
  end

  def perform #lance une partie
    system "clear"
    winner_toss = @p_view.toss_view(@playerA, @playerB)
    play(winner_toss)
  end

  def play(player) #le tour d'un joueur
    @board.print_board
    choice = @p_view.play_view(player, @board.empty_casses)
    @board.change_case_status(choice,player.symbol)
    check_end = @board.check_end(player)
    if !check_end.nil?  && check_end[0] == "win"
      game_win(player, check_end[1])
    elsif check_end == "draw"
      game_draw
    else
      play(other_player(player))
    end
  end

  def other_player(player) #permet de changer le joueur actif
    return player.name == @playerA.name ? @playerB : @playerA
  end

  def game_win(player, end_grid) #affiche le texte de victoire
    @board.board_win(end_grid)
    @board.print_board
    @p_view.message_win(player)
  end

  def game_draw #affiche le texte de draw
    @board.board_draw
    @board.print_board
    @p_view.message_draw
  end
end
