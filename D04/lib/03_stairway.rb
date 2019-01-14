def throw_dice
	#puts "Lance le dé en appuyant sur ton clavier, enfin une touche"
	#gets
	value = rand(1..6)
	#puts "votre lancer est de #{value}"
	return value
end
			
def count(dice, position, nb_tries)
	case 
	when position == 10
		#puts "Vous êtes un winner !"
		return nb_tries
	when dice>=5 && position<10
		position+=1
		#puts "Vous avancez d'une case et votre nouvelle position est #{position}"
		#puts "===="
	when dice==2, dice==3, dice==4
		#puts "Vous êtes toujours au même point et votre position est #{position}"
		#puts "===="
	when dice<2&&position<10&&position>0
		position-=1
		#puts "Dommage, vous reculez d'une case et votre nouvelle position est #{position}"
		#puts "===="
	end
	nb_tries +=1
	count(throw_dice, position, nb_tries)
end

def game
	#puts "Bienvenue dans votre nouveau super jeu ! Prêt.e à lancer le dé ? Ready, steady, go !"
	return count(throw_dice,0,0)

end

def average_finish_time
	puts "rentrer un nb de parties"
	print "> "
	var_array = []
	nb_games = gets.to_i
	if nb_games >= 100
		nb_games.times do
		 var_array << game
		end
		puts "#{var_array.sum / nb_games.to_f}"

	else
		puts "il faut au moins 100 parties pour un résultat valable"
		average_finish_time
	end


end

#game
average_finish_time
