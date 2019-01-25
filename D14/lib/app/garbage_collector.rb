require 'app/game'

class GarbageCollector #détruit les instances de cases et joueurs

  def delete_all_object
    ObjectSpace.each_object(BoardCase) do |c|
        c.remove
    end
    ObjectSpace.each_object(Player) do |p|
        p.remove
    end
  end
end
