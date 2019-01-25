# frozen_string_literal: true

# cette classe cree un index qui permet de selectionner la sortie
class Index
  def index
    puts "Nous allons scrapper les emails des mairies du Val d'Oise.\nDans quel format les voulez vous ?
    1 : format JSON
    2 : format google spreadsheet
    3 : format CSV
Tapez le chiffre correspondant au format souhaité :"
    print '> '
    select(gets.to_i)
  end

  def select(var)
    case var
    when 1
      EmailsMairie.new.save_as_json
    when 2
      EmailsMairie.new.save_as_spreadsheet
    when 3
      EmailsMairie.new.save_as_csv
    else
      Done.new.done
    end
  end

  def self.perform
    Index.new.index
  end
end
