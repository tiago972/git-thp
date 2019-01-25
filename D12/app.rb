# frozen_string_literal: true

# Fichier lancant l'ensemble du programme

require 'bundler'
require 'csv'
require 'open-uri'
require 'json'
Bundler.require
local_dir = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(local_dir)
require 'views/index'
require 'views/done'
require 'app/scrapper'

# Methode principale: appele le menu de selection dit "Index"
Index.perform
