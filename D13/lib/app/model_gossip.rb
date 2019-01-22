require 'app/controller_gossip'

class ModelGossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open('db/potin.csv', "a+") << [self.author, self.content]
  end

  def self.all
    return_array = []
    CSV.open('db/potin.csv', "r").each do |row|
      tmp_ModelGossip = ModelGossip.new(row[0], row[1])
      return_array << tmp_ModelGossip
    end
    return return_array
  end
end
