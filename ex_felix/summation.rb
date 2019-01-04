def summation(var_int)
	sum = 0
	i = 0
	while i <= var_int
		sum+=i
		i+=1
	end	
	return sum
end
puts "#{summation(8)}"
