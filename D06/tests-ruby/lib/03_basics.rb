def who_is_bigger(a, b, c)
	if a == nil || b == nil || c == nil
		return "nil detected"
	end
	tab = [a, b, c]
	case tab.max
	when a
		return "a is bigger"
	when b
		return "b is bigger"
	when c
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(string)
	string = string.reverse.upcase
	return string.delete("LTA")
end

def array_42(var_array)
	return var_array.include?(42)
end

def magic_array(var_array)
	var_array = var_array.flatten.sort.map {|a| a * 2}.delete_if{|a| a%3==0}.uniq
	return var_array
end
