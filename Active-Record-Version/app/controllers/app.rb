require 'sinatra'


get '/' do
  erb :index
end

get '/mascotas' do
  erb :mascotas
end

get '/musica' do
  erb :musica
end

get '/politica' do
  erb :politica
end

get '/tecnologia' do
  erb :tecnologia
end

get '/answers' do
  erb :answers
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


post '/questions' do
  redirect to('/answers')
end

post '/answers' do
  redirect to('/answers')
end
