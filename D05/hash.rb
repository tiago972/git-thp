local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)
require "var_hash.rb"

var_hash = $TAB1.map(&:to_sym).zip($TAB2).to_h

def biggest_value(var_hash)
	var_hash.each do |key, value|
		var_hash[key] = var_hash[key].delete('$').to_f
	end
	val_max = var_hash.values.max	
	key_val_max = var_hash.select{|key, value| value == val_max}
	puts "La plus grosse crypto est #{key_val_max.keys.to_s.sub(/\[:\"/, '').sub(/\"\]/,'')} pour une valeur de #{val_max}$"
end

def smallest_value(var_hash)
	var_hash.each do |key, value|
		var_hash[key] = var_hash[key].delete('$').to_f
	end
	val_min = var_hash.values.min	
	key_val_min = var_hash.select{|key, value| value == val_min}
	puts "La/les plus petites cryptos sont :"
	key_val_min.each do |key, value|
		puts "#{key.to_s.sub(/\[:/, '').sub(/\]/,'')}" + " valant " + "#{val_min}" + "$"
	end	
end

def count_coin(var_hash)
	i = 0
	var_hash.each do |key, value|
		if !(key.to_s !~ /coin/i)
			i+=1
		end
	end
	return i
end

def count_min6000(var_hash)
	i = 0
	var_hash.each do |key, value|
		var_hash[key] = var_hash[key].delete('$').to_f
		if var_hash[key] < 6000
			i[key] = var_hash[key]
		end
	end

	return i
end

def which_highest_in_low(var_hash)
	i = {}
	var_hash.each do |key, value|
		var_hash[key] = var_hash[key].delete('$').to_f
		if var_hash[key] < 6000
			i[key] = var_hash[key]	
		end
	end
	val_max = i.values.max	
	key_val_max = var_hash.select{|key, value| value == val_max}
	puts "La monnaie dont la valeur est la plus haute dans celles valant moins de 6000$ est #{key_val_max.keys.to_s.sub(/\[:\"/, '').sub(/\"\]/,'')} avec une valeur de #{val_max}$"
end

def call_function(enter, var_hash)
	case enter
	when 1
		biggest_value(var_hash)
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_hash)
	when 2
		smallest_value(var_hash)
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_hash)
	when 3
		puts "Il y a #{count_coin(var_hash)} monnaies contennant le mot \"coin\""
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_hash)
	when 4
		puts "Il y a #{count_min6000(var_hash)} monnaies valant moins de 6000$"
		puts "*****************"
		2.times {puts (" ")}
		program_choose(var_hash)
	when 5
		puts "#{which_highest_in_low(var_hash)}"
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

#hash2 = {:test1 => "$1", :test2 => "$2", :test3 => "$50"}
#biggest_value(hash2)
program_choose(var_hash)

#puts "#{var_hash}"
