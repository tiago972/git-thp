require 'app/game'
require 'views/welcome'
require 'views/pegasus'

class Application

  def perform #menu
    i = 1
    prompt = TTY::Prompt.new
    system "clear"
    puts $WELCOME
    print "\n"*3
    puts "Ceci est le meilleur jeu Morpion jamais réalisé..."
    puts
    while true
      choices = {'Morpion classic, je veux défoncer mon pote !' => 1, 'Je veux quitter ce jeu !!!!' => 9}
      answer = prompt.select('Tu veux faire quoi mec ?!', choices, help: '(Use arrow keys to choose your answer and Enter to validate)')
      case answer
      when 1
        puts "Ceci est la partie numéro #{i}"
        sleep(1)
        Game.new.perform
        GarbageCollector.new.delete_all_object #permet de supprimer les instances
        i+=1
      when 9
        puts $PEGASUS
        puts "À bientôt !"
        sleep(1)
        system "clear"
        break
      end
    end
  end

end
