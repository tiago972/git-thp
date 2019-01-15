def ceasar_cypher(var_string, n)
	a = ""
	n = n%26
	var_string.each_char do |c|
		c = c.ord
		if c.ord.between?('a'.ord, 'z'.ord) ||  c.ord.between?('A'.ord, 'Z'.ord) 
			if (c + n > 'z'.ord && c <= 'a'.ord)
				c = 'a'.ord + (c + n - 'z'.ord - 1)
			elsif (c >= 'a'.ord) && (c + n <= 'z'.ord)
				c+=n
			elsif (c + n > 'Z'.ord && c <= 'A'.ord)
				c = 'A'.ord + (c.ord + n - 'Z'.ord - 1)
			else
				c+=n
			end
		a+=c.chr
		end
	end
	puts "#{a}"
end
