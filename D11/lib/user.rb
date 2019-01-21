class User
	attr_accessor :email, :name
	@@var_user = []
	
	def initialize(email)
		h = {}
		@email = email
		h[:email] = email
		@@var_user << [self.email, self.name]
	end
	def get_name(name, email)
		@name = name
		
	def self.array
		return @@var_user
	end
end
