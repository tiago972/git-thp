def count_false(var_array)
	sum = 0;
	var_array.each do |i|
		if i == true
			sum += 1
		end	
	end
	return sum
end
test = [true, true, true, false, true, true, true, true , true, false, true, false, true, false, false, true , true, true, true, true , false, false, true, true]
puts "#{count_false(test)}"
