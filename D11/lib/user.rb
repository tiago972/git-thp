class User
	attr_accessor :email, :name
	@@var_user = []

	def initialize(email)
		h = {}
		@email = email
		h["email".to_sym] = email
		@@var_user << h
	end

	def name(name)
		@name = name
		@@var_user.select{|x| x[:email] == @email}[0]["name".to_sym] = name
	end

	def self.array
		return  @@var_user
	end
end
