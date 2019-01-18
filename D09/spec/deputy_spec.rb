require_relative '../lib/deputy'

describe "test du scrap deputy.rb" do 
	it "vérifier si il y a 577 types" do
		expect(get_congressman_url.size).to eq(577)
	end
	it "vérifie si l'adresse de Matthieu Orphelin est la bonne" do 
		expect(get_congressman_url.select{|x| x[:last_name] == "Orphelin"}[0][:email]).to eq("matthieu.orphelin@assemblee-nationale.fr")
	end
end
