puts "T'es né quand ?"
print "> "
num_var = gets.to_i
num_2 = num_var
while num_var < 2019
	puts "Il y a #{2019 - num_var} ans tu avais #{num_var - num_2} ans"
	num_var+=1
end
