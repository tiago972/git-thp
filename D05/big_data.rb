local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)
require "tab.rb"

def start_nb(var_array)
	i = 0
	var_array.each do |j|
		if !(j !~ /\d/)
			i+=1
		end
	end
	return i
end

def letters_Aude(var_array)
	i = 0
	var_array.each do |j|
		if !(j !~ /aude/i)
			i+=1
		end
	end
	return i
end

def start_upper(var_array)
	i = 0
	var_array.each do |j|
		if !(j !~ /^@[A-Z]/)
			i+=1
		end
	end
	return i
end

def have_upper(var_array)
	i = 0
	var_array.each do |j|
		if !(j !~ /[A-Z]/)
			i+=1
		end
	end
	return i
end

def nb_underscore(var_array)
	count_array = []
	i = 0
	var_array.each do |j|
		i = i + j.scan(/_/).size
	end
	return i
end

def sort_50(var_array)
	puts "Les 50 noms les plus courts sont :"
	i = 0
	while i < var_array.size - 1
		if var_array[i].size > var_array[i+1].size
			tmp = var_array[i]
			var_array[i] = var_array[i+1]
			var_array[i+1] = tmp
			i = -1
		end
		i+=1
	end
	i = 0
	while i < 50	
		puts "#{var_array[i]}"
		i+=1
	end
end

def call_function(var_int, var_array)
	case var_int
	when 1
		puts " Le tableau contient #{var_array.size} comptes"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 2
		puts "Il y a #{start_nb(var_array)} personnes dont le handle contient un chiffre"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 3
		puts "Il y a #{letters_Aude(var_array)} personnes ayant ces 4 lettres dans leurs handle"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 4
		puts "Il y #{start_upper(var_array)} personnes dont le handle commencent par une majuscule"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 5
		puts "Il y a #{have_upper(var_array)} personnes dont le handle contient une majuscule"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 6
		puts "Il ya #{nb_underscore(var_array)} underscore"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 7
		puts "liste triée par ordre alphabétix (à l'aide de son pote cétotaumatix .sort)"
		puts "#{var_array.sort}"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 8
		puts "#{sort_50(var_array)}"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	when 9
		puts "Le pseudo @epense est en #{var_array.index("@epenser")}ème position"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_array)
	end
end

def program_choose(var_array)
	puts "Choisis ce que tu veux afficher de ton tableau:
	1 Pour combien y a-t-il de journalistes dans ce array ? 
	2 Pour combien d'handle contiennent un un numéro?
	3 Pour combien d'handle contiennent les 4 lettres du prénom \"Aude\" à la suite (sans prendre en compte les majuscules?)?
	4 Pour combien commencent par une majuscule?
	5 Combien contiennent une majuscule ?
	6 Combient y a t'il de underscore dans tous les pseudos confondus?
	7 Pour trier la liste par ordre alphabétique
	8 Pour quels sont les 50 handle les plus courts de ce array
	9 Quelle est la position dans l'array de la personne @epenser?
	*************************************************************	
	N'importe quelle touche pour quitter"
	print ('> ')
	enter = gets.to_i
	2.times {puts (" ")}
	if enter <= 9 && enter >= 1
		call_function(enter, var_array)
	end
end

program_choose($TAB)
