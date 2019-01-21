require_relative "../lib/user"

describe "test user_add" do
	it "test new add" do
		user = User.new('julie_test@test.com')
		expect(user.class).to eq(User)
	end

	it "test type of adds" do
		user = User.new('julie_test@test.com')
		expect(user.email).to eq("julie_test@test.com")
	end

	it "test the name" do
		user = User.new('julie_test@test.com')
		user.name('Julie')
		expect(user.name).to eq('Julie')
	end

	it "test of the user_array" do
	user = User.new('julie_test@test.com')
	user.name("Julie")
	expect(User.array.select{|x| x[:email] == "julie_test@test.com"}[0][:name]).to eq("Julie")
	end
end

