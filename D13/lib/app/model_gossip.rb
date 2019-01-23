require 'app/controller_gossip'

class ModelGossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    if !File.file?('db/potin.csv')
      CSV.open('db/potin.csv', "a", write_headers: true, headers: ['Author', 'Content']).close
    end
    f = CSV.open('db/potin.csv', "a") << [self.author, self.content]
    f.close
  end

  def self.print_all
    return_array = []
    CSV.open('db/potin.csv', "r", headers: true).each do |row|
      tmp_ModelGossip = ModelGossip.new(row[0], row[1])
      return_array << tmp_ModelGossip
    end
    return return_array
  end

  def self.delete_all
    CSV.open('db/potin.csv', "w+").each do |f|
      f.write()
      f.close
    end
  end

  def self.author_del(author_del)
    table = CSV.table('db/potin.csv')
    table.delete_if do |row|
      row[:author] == author_del
    end
    File.open('db/potin.csv', 'w') do |f|
      f.write(table.to_csv)
      f.close
    end
  end

  def self.regex_del(regex_del)
    table = CSV.table('db/potin.csv')
    table.delete_if do |row|
      /#{Regexp.escape(regex_del)}/i =~ row[:content]
    end
    File.open('db/potin.csv', 'w') do |f|
      f.write(table.to_csv)
      f.close
    end
  end
end
