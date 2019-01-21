class User
	attr_accessor :email, :name
	@@var_user = []

	def initialize(email)
		@email = email
		@@var_user << self
	end

	def self.find_by_email(email)
		return @@var_user.select{|x| x.email ==  email}[0]
	end

	def self.array
		return  @@var_user
	end
end
