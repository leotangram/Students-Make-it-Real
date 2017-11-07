require 'sinatra'

questions = [
"1. Como puedo agregar layouts a una aplicación hecha en Sinatra?"
]

answers = [
"1. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
  erb :answers, locals: {questions: questions, answers: answers}
end


post '/questions' do
  questions << params[:question]
  redirect to('/answers')
end

post '/answers' do
  answers << params[:answer]
  redirect to('/answers')
end
