puts "T'es né quand ?"
print "> "
num_var = gets.to_i
num_2 = num_var
while num_var < 2019
	if (2019 - num_var == num_var - num_2)
		puts "Il y a #{2019 - num_var} ans, tu avais la moitié de l'âge que tu as aujourd'hui"
	else
		puts "Il y a #{2019 - num_var} ans tu avais #{num_var - num_2} ans"
	end
	num_var+=1
end
