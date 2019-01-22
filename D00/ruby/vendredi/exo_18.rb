i = 1
tab = []
while i < 51
	if i < 10
		tab << "jean.dupont.0"+"#{i}"+"@email.fr"
	else
		tab << "jean.dupont."+"#{i}"+"@email.fr"
	end
	i+=1
end
