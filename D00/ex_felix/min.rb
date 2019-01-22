def my_min(var_array)
	i = 0
	while i < var_array.length - 1
		if var_array[i] > var_array[i+1]
			buf = var_array[i]
			var_array[i] = var_array[i + 1]
			var_array[i + 1] = buf
			i = -1
		end
		i+=1
	end
	return var_array[0]
end
test = [34, 15, 88, 2]
puts "#{my_min(test)}"
