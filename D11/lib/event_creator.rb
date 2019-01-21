require_relative './event'

def event_creator
	puts "Salut, tu veux créer un événement ? Cool !"
	puts  "Commençons, quel est le nom de l'événement ?"
	print '> '
	var_name = gets.chomp
	puts "Super, quand aura-t-il lieu ?"
	print "> "
	var_date = gets.chomp
	puts "Au top, combien de temps en minutes va-t-il durer ?"
	print ('> ')
	var_dur = gets.chomp
	puts "Génial, qui va participer ? Balance leurs emails"
	print ('> ')
	var_email = [gets.chomp]
	puts "OKK"

	Event.new(var_date, var_dur, var_name, var_email)
end
