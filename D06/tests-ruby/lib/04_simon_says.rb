def echo(var_string)
	return var_string
end

def shout(var_string)
	return var_string.upcase
end

def repeat(var_string, nb = 2)
	return ((var_string + " ") * nb).sub(/ $/, '')
end

def start_of_word(var_string, nb)
	return var_string[0..nb-1]
end

def first_word(var_string)
	return var_string.match(/\w+/).to_s
end

def titleize(var_string)
	return var_string.gsub!(/\w{4,}/, &:capitalize).sub!(/\w/, &:capitalize).sub!(/(\w+)$/, &:capitalize)
end
