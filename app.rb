require 'bundler'
Bundler.require

set :database, "sqlite3:///app.db"

class People < ActiveRecord::Base
end

get '/' do
  send_file 'index.html'
end

get '/people' do
  @people = People.all
  jbuilder :index
end

get '/people/:id' do
  @person = People.find(params[:id])
  jbuilder :show
end
