def add(nb_1, nb_2)
 return nb_1 + nb_2
end

 def substract(nb_1, nb_2)
	 return nb_1 - nb_2
 end

 def sum(var_arr)
	 return var_arr.sum
 end

 def multiply(nb_1, nb_2)
	 return nb_1 * nb_2
 end

 def power(nb, power)
	return nb ** power 
 end

 def factorial(nb)
	if nb == 0
		return 1
	end
	if nb >= 1
		return (1..nb).reduce(:*)
	end
 end
