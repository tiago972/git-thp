require 'views/pegasus'
require 'views/loading'
require 'views/winner'
require 'views/alphabet'
require 'views/draw'

class PlayView

  def initialize

  end

  def choose_name(name)
    print "Player " + name + ", ton pseudo ?\n>"
    return gets.chomp
  end

  def toss_view(a,b)
    puts "Bon jeu à vous " + a.name + " et " + b.name + " !\n"
    winner_toss(a,b)
  end

  def winner_toss(a,b)
    prompt =  TTY::Prompt::new
    choices = {'Pile' => 1, 'Face' => 2}
    answer = prompt.select(a.name + " pile ou face ?", choices, help: '(Use arrow keys to choose your answer and Enter to validate)')
    return answer == rand(1..2) ? display_startscreen(a) : display_startscreen(b)
  end

  def display_startscreen(player)
    print "\n"*3
    puts "C'est " + player.name + " qui commence"
    sleep(1)
    system "clear"
    print "\n"*5
    puts $PEGASUS
    puts $LOADING
    sleep(2)
    return player
  end

  def play_view(player, cases_array)
    prompt = TTY::Prompt.new
    choices = {}
    puts player.name + ", c'est ton tour !"
    cases_array.each do |c|
      choices[c.name.to_sym] = c.name    
    end
    if !choices.empty?
      answer = prompt.select('Voici les cases disponibles :"', choices, help: '(Use arrow keys to choose your answer and Enter to validate)', per_page: 9)
      return answer
    end
  end

  def to_ascii(player)
    ascii = []
    player.name.upcase.each_char do |char|
      $ALPHABET.each do |a|
        if a[1] == char
          ascii << a[0]
        end
      end
    end
    ascii.each { |a| print a.to_s}
    return ascii
  end

  def message_win(player) 
    puts player.name
    print " "*3 + $WINNER
    #to_ascii(player)
    sleep(2)
    system "clear"
  end

  def message_draw
    print $DRAW + "\n"
    sleep(2)
    system "clear"
  end
end
