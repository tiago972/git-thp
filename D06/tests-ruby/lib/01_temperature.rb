def ftoc(degree_F)
	return (degree_F - 32) * 5/9
end

def ctof(degree_C)
	return ((degree_C.to_f * 9/5) + 32).to_f
end
