def sum_of_3_or_5_multiples(n)
	if (n.is_a? Integer) && n >= 0
		return (0...n).select{ |x| (x % 3 == 0) ||(x % 5 == 0)}.reduce(:+)
	else
		return "Nique ta mère"
	end
end
