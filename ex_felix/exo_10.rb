def sum_part(var_array)
	sum_pos = 0
	sum_neg = 0
	var_array.each do |i|
		if i > 0 
			sum_pos+=i
		else
			sum_neg+=i
		end
	end
	return tab = [sum_pos, sum_neg]
end
test =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] 
puts "#{sum_part(test)}"
