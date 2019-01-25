puts "File moi un chiffre"
print "> "
var_num = gets.chomp.to_i
i = 0
(var_num+1).times do
	puts "#{i}"
	i+=1
end
