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

  def index_gossips
    var_which = @view_gossip.which
    case var_which
    when 1
      puts "en dev BITCH"
      exit
    when 2
      temp = ModelGossip.all
      #@view_gossip.all(temp)
    end
  end
end
