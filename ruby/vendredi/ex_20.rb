puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? Le nombre ddoit être compris entre 1 & 25"
print "> "
var_num=gets.chomp.to_i
if var_num >= 1 && var_num <= 25
	puts "Voici la pyramide :"
	i = 1
	while i <= var_num
		j = 0
		while j < i
			print '#'
			j+=1
		end
		print "\n"
		i+=1
	end
else
	puts "Error: Le nombre doit être compris entre 1 et 25"
end
