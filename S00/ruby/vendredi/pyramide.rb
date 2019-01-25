puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? Le nombre doit être compris entre 1 & 25"
print "> "
var_num=gets.chomp.to_i

if var_num >=1 && var_num <= 25
	puts "Voici la pyramide :"
	i = 1
	while var_num >= 0
		var_num.times do
			print ' '
		end
		var_num-=1
		i.times do
			print '#'
		end
		i+=1
		print "\n"
	end
else
	puts "Error: Le nombre doit être entre 1 & 25"
end
