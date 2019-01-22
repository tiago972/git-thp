class ViewGossip

  def create_gossip
    print "Nom de la bitch\n > : "
    var_author = gets.chomp
    print "Balance tout ici\n > : "
    var_gossip = gets.chomp
    return params = {author: var_author, content: var_gossip}
  end

  def which
    print "Par auteur? Tape 1\nTous? tape 2\n>  "
    var_which = gets.to_i
    return var_which
  end

  def all(all_db)
    all_db.each do |row|
     puts "BITCH QUI BALANCE :" + row.author
     puts "CE QU'IL DIT : " + row.content
    end
  end
end
