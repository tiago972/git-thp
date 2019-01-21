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
		user.name("Julie")
		expect(user.name).to eq("Julie")
	end
end

