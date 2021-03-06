require 'app/model_gossip'
require 'views/view_gossip'

class ControllerGossip

  def initialize
    @view_gossip = ViewGossip.new
  end

  def create_gossip
    params = @view_gossip.create_gossip
    ModelGossip.new(params[:author], params[:content]).save
  end

  def index_gossips_print
    var_which = @view_gossip.which
    case var_which
    when 1 
      temp = ModelGossip.print_all
      author_del = @view_gossip.author_sel(temp)
      @view_gossip.print_by_author(temp, author_del)
    when  2 || 3
      puts "en dev BITCH"
      exit
    when 4
      temp = ModelGossip.print_all
      @view_gossip.all(temp)
    else
      puts "Mauvaise saisie"
      ControllerGossip.new.index_gossips_print
    end
  end

  def index_gossips_del
    var_which = @view_gossip.which
    case var_which
    when 1 
      tmp = ModelGossip.print_all
      author_del = @view_gossip.author_sel(tmp)
      ModelGossip.author_del(author_del)
      puts "Les messages de #{author_del} ont été supprimé\n"
    when 2
      tmp = ModelGossip.print_all
      var_reg = @view_gossip.expr_sel(tmp)
      ModelGossip.regex_del(var_reg)
    when 3
      puts "en dev BITCH"
      exit
    when 4
      ModelGossip.delete_all
      puts "T'as tout supprimé donc...."
    else
      puts "Mauvaise saisie"
      ControllerGossip.new.index_gossips_print
    end
  end 
end
