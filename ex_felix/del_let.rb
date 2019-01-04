def del_letters(var_string)
	var_string[0] = ''
	var_string[var_string.length - 1] = ''
	return var_string
end
puts "#{del_letters("wazza")
}"
