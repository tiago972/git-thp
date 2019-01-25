puts "T'es né quand ?"
print "> "
num_var = gets.to_i
num_2 = num_var
while num_var <= 2017
	puts "En #{num_var} tu avais #{num_var - num_2} ans"
	num_var+=1
end
