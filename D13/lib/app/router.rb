require 'app/controller_gossip'

class Router
  
  def initialize
    @controller_gossip = ControllerGossip.new
  end

  def perform
    puts "Bienvenue mon frère"
    while true
      puts "Tu veux faire quoi?\n1 pour créer un gossip\n2 pour afficher ce qu'il se dit sur toi\n3 pour supprimer un gossip\n4 pour quitter"
      print '> '
      params = gets.to_i

      case params
      when 1
        puts "Tu vas créer un gossip\n"
        @controller_gossip.create_gossip
      when 2
        puts "Ainsi tu veux voir ce que dise les bich\n"
        @controller_gossip.index_gossips_print
      when 3
        puts "Alors comme ça on assume pas?\n"
        @controller_gossip.index_gossips_del
      when 4
        puts "Tchao"
        break
      else
        puts "fatal error"
      end
    end
  end
end
