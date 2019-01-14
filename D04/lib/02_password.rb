def signup
	puts "Enregistre un mot de passe"
	print "> "
	password = gets.chomp
	return password
end

def login(password)
	puts "Quel est ton mot de passe ?"
	print "> "
	login_try = gets.chomp

	if login_try == password
		welcome_screen
	else
		puts "Error fatal du système DOS, retente ta chance, born loser"
		login(password)
	end
end

def welcome_screen
	puts "Bienvenue sur ton superadmin"
end

def perform
	password = signup
	login(password)
end

perform







