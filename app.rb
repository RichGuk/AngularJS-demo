$:.unshift '.'
require 'sinatra'
require "sinatra/activerecord"
set :database, "sqlite3:///app.db"

class People < ActiveRecord::Base
end

get '/' do
  send_file 'index.html'
end

get '/people' do
  People.all.to_json
end
