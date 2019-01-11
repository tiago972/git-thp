local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)
require "var_hash.rb"
=begin
var_hash = $TAB1.map(&:to_sym).zip($TAB2).to_h

def call_function(enter, var_hash)
	case enter
	when 1
		puts "La plus grosse crypto monnaie est #{var_hash.values.max}"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_hash)
	end
end


def program_choose(var_hash)
	puts "Choisis ce que tu veux afficher de ton tableau:
	1 Pour la ou les crypto qui ont la plus grosse valeur.
	2  La ou les crypto qui ont la plus petite valeu
	3 Le nombre de crypto contenant le mot \"coin\"
	4 Les devises, dont le cours est inférieur à 6000 (Indice : on peut comparer en valeur 2 integers mais pas 2 strings. Pense bien à enlever le $ et éventuellement utiliser .to_i pour faire cet exercice).
	5 La devise la plus chère parmi celles dont le cours est inférieur à 6000.
	*************************************************************	
	N'importe quelle touche pour quitter"
	print ('> ')
	enter = gets.to_i
	2.times {puts (" ")}
	if enter <=5  && enter >= 1
		call_function(enter, var_hash)
	end
end
=end
hash2 = {:test1 => "$1", :test2 => "$2", :test3 => "$50"}
def biggest_value(var_hash)
	var_hash.each do |key, value|
		value = value.sub(/$/, '')
		value = value.to_i
	end
	test = var_hash.values.max
	test2 = var_hash.select{|key, value| value == test}
	puts "#{test} le tableau : #{test2}"
end
biggest_value(hash2)
#program_choose(var_hash)
