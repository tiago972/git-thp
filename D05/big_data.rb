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

def call_function(var_int, var_array)
	case var_int
	when 1
		puts "#{var_array.size}"
		puts "*****************"
		program_choose(var_array)
	when 2
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	when 3
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	when 4
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	when 5
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	when 6
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	when 7
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	when 8
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	when 9
		puts "#{start_nb(var_array)}"
		puts "*****************"
		program_choose(var_array)
	end
end

def program_choose(var_array)
	puts "Choisis ce que tu veux afficher de ton tableau:
	1 pour combien y a-t-il de journalistes dans ce array ? 
	2 pour combien d'handle contiennent un un numéro?
	3 pour combien d'handle contiennent les 4 lettres du prénom \"Aude\" à la suite (sans prendre en compte les majuscules?)?
	4 pour combien commencent par une majuscule?
	5 combien contiennent une majuscule ?
	6 combient y a t'il de underscore dans tous les pseudos confondus?
	7 pour Trier la liste par ordre alphabétique
	8 pour quels sont les 50 handle les plus courts de ce array
	9 quelle est la position dans l'array de la personne @epenser?
	*************************************************************	
	N'importe quelle touche pour quitter"
	enter = gets.to_i
	if enter <= 9 && enter >= 1
		call_function(enter, var_array)
	end
end

program_choose($TAB)

