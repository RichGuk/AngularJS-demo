$:.unshift '.'
require 'sinatra'
require "sinatra/activerecord"
require 'models'
set :database, "sqlite3:///app.db"

get '/people' do
  People.all.to_json
end
