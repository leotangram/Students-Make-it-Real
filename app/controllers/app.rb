require 'sinatra'

get '/' do
  erb :index
end

get '/español' do
  erb :español
end

get '/studython' do
  erb :studython
end

get '/musicapp' do
  @allSongs = Song.all
  erb :musicapp
end

post '/musicapp/new' do

   name = params[:name]
   band = params[:band]
   url = params[:url]
   obj = {  :name    => name,
            :band    => band,
            :url     => url }
   Song.create(obj)
   redirect '/musicapp' 
end

