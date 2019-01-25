# frozen_string_literal: true

# Classe principale: scrap et sauve dans le format choisi
class EmailsMairie
  # cette methode transforme le hash en format json (dir db)
  def save_as_json
    h = get_townhall_urls
    File.open('db/emailJSON.json', 'w') do |f|
      f.write(h.to_json)
    end
    puts "\nTon fichier JSON est prêt\n\n"
    Index.new.index
  end

  # cette methode ecrit sur une google spreadsheet le hash
  def save_as_spreadsheet
    session = GoogleDrive::Session.from_config('./config.json')
    key = '1cAn303rPBOi1d2O0j4tQuGi5FZksD2yVAzNQd57cDns'
    ws = session.spreadsheet_by_key(key).worksheets[0]
    i = 1
    get_townhall_url.sto_a.each do |x|
      ws[i, 1] = x[0]
      ws[i, 2] = x[1]
      i += 1
    end
    ws.save
    puts "\nTon fichier google est prêt\n\n"
    Index.new.index
  end

  # cette methode transforme le hash en csv (dir db)
  def save_as_csv
    h = get_townhall_urls
    CSV.open('db/emails.csv', 'wb', write_headers: true, headers: ['Mairies du 95', 'Email']) do |csv|
      h.to_a.each { |elem| csv << elem }
    end
    puts "\nTon fichier csv est prêt\n\n"
    Index.new.index
  end

  # cette methode scrappe les emails sur la page du site d'une mairie
  def get_townhall_email(townhall_url)
    doc = Nokogiri::HTML(open(townhall_url))
    doc.css('tbody').css('tr')[3].css('td')[1].to_s.match(/>(.*)</).to_s.delete('><')
  end

  # cette methode cree un hash avec le nom des villes et l'email des mairies
  def get_townhall_urls
    h = {}
    page = 'http://annuaire-des-mairies.com'
    doc = Nokogiri::HTML(open(page + '/val-d-oise.html'))
    doc.xpath('//a[@class="lientxt"]').each do |node|
      h[node.text.capitalize.to_sym] = get_townhall_email(page +
                                                          node.xpath('@href').text.gsub!(/^\./, '').to_s)
    end
    return h
  end
end
