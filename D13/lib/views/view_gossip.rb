class ViewGossip

  def create_gossip
    print "Nom de la bitch\n > : "
    var_author = gets.chomp
    print "Balance tout ici\n > : "
    var_gossip = gets.chomp
    return params = {author: var_author, content: var_gossip}
  end

  def which
    print "Par auteur? Tape 1\nSelon ce qui a dedans? Tape 2\nTous? tape 4\n>  "
    var_which = gets.to_i
    return var_which
  end

  def print_by_author(all_db, author_sel)
    puts "Les messages de #{author_sel} sont:\n"
    all_db.select{ |x| x.author == author_sel }.each{ |y| puts y.content}
  end
  
  def all(all_db)
    puts "++++++++++++++++++++++++++"
    all_db.each do |row|
      puts "Btich qui balance :" + row.author
      puts "  == "
      puts "Ce qu'il raconte : " + row.content
      puts "+++++++++++++++++++++++++"
    end
  end
  
  def author_sel(all_db)
    puts "Les auteurs sont :"
    all_db.each do |row|
      puts row.author
    end
    print '> '
    return gets.chomp
  end

  def expr_sel(all_db)
    print "Supprimer les messages contenants:\n> "
    return gets.chomp
  end

end
