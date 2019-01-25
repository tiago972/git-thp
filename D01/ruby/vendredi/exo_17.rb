puts "T'as quel âge ?"
print "> "
num_var = gets.to_i
num_2 = 0
while num_var >= 0
	if num_var != num_2
		puts "Il y a #{num_var} ans, tu avais #{num_2} ans"
	else
		puts "Il y a #{num_var} ans, tu avais la moitié de l'âge que tu as aujourd'hui"
	end
	num_var-=1
	num_2+=1
end
