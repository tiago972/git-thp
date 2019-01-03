puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? Le nombre doit être compris entre 1 & 25"
print "> "
var_num=gets.chomp.to_i

if var_num >=1 && var_num <= 25
	puts "Voici la pyramide :"
	i = var_num / 2
	j = 1
	while j <= var_num
		if i > 0
			i.times do
				print ' '
			end
		i-=1
		end
		j.times do
			print '#'
		end
		j+=1
		print "\n"
	end
else
	puts "Error: Le nombre doit être entre 1 & 25"
end
