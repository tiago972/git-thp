i = 1
tab = []
while i < 51
	if i < 10
		tab << "jean.dupont.0"+"#{i}"+"@email.fr"
	else
		tab << "jean.dupont."+"#{i}"+"@email.fr"
	end
	if i % 2 == 0
		puts tab[i - 1]
	end
	i+=1
end
