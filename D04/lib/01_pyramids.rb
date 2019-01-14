def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	store_number = gets.to_i
	puts "Voici la pyramide :"
	store_number.times do |i|
		i += 1 #itération initiale afin de ne pas avoir i = 0 en première boucle
		puts " " * (store_number-i) + "#" * i
	end
end



def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	store_number = gets.to_i
	if store_number < 26&&store_number > 0
		puts "Voici la pyramide :"
		store_number.times do |i|
			i += 1
			puts " " * (store_number-i) + "#" * (2*i-1) + " " * (store_number-i)
		end
	else
		puts "Donne-nous un chiffre compris entre 1 et 25"
		full_pyramid
	end

end



def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	store_number = gets.to_i

	if !store_number.even?&&store_number < 26&&store_number > 0
		puts "Voici la pyramide :"
		store_number = (store_number + 1)/2 #division par 2 pour construction de chacune des moitiée et + 1 pour obtenir un chiffre pair.
		store_number.times do |i|
			i += 1
			puts " " * (store_number-i) + "#" * (2*i-1) + " " * (store_number-i)
		end
		store_number -= 1 #décrémentation de store_number sinon étage inférieure de même longueur que la partie supérieure
		store_number.times do |i|
			puts " " * (1+i) + "#" * (2*store_number-2*i-1) + " " * (1+i)
		end
	else
		puts "Donne-nous un chiffre impair et compris entre 1 et 25"
		wtf_pyramid
	end

end


wtf_pyramid
