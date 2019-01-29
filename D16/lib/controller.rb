require 'bundler'
Bundler.require
require 'model_gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
  get '/new/' do
    erb :create_gossip
  end
  post '/new/' do
    ModelGossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end
    get '/print_all/' do
      erb :print, locals: {array_gossip: ModelGossip.print_all}
    end
    get '/edit/:id/' do
      erb :edit, locals: {gossip: ModelGossip.find(params['id'].to_i), indentation: params['id']}
    end
    post '/edit/:id/' do
      ModelGossip.update(params['gossip_author'], params['id'].to_i, params["gossip_content"])
    end
end
