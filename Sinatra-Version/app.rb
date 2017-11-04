require 'sinatra'

questions = [
"How old is Ozu?"
]


get '/' do
  erb :index, locals: {questions: questions}
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


post '/questions' do
  questions << params[:question]
  redirect to('/')
end
