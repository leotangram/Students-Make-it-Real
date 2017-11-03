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

