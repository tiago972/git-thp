require_relative '../lib/03_Shakespeare'

local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)
f = File.open('shakespeare.txt', "r")
s = f.read
f.close

d1 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
d2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
describe "#word_counter" do
it "ex1" do
  expect(word_counter("below", d1)).to eq({:below=>1, :low=>1})
end

it "ex2" do
  expect(word_counter("Howdy partner, sit down! How's it going?", d1)).to eq({:down=>1, :how=>2, :howdy=>1, :go=>1, :going=>1, :it=>2, :i=> 3, :own=>1, :part=>1, :partner=>1, :sit=>1})
end

it "ex3" do
  expect(word_counter("zruerhgps", d1)).to eq({})
end

it "ex4" do
  expect(word_counter(s, d2)).to eq({:a => 271278, :and => 32647, :are => 6583, :be => 20743, :by => 4987, :for => 13993, :i => 238146, :in => 53054, :is => 36663, :it => 29509, :not => 10951, :of => 20609, :on => 33114, :or => 40420, :that => 11553, :the => 51859, :this => 6916, :to => 29402, :with => 9201, :you => 22205})
end
end
