require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**.*.rb')
require('./lib/user')
require('./lib/survey')
require('pry')

get('/') do
  erb(:home)
end

get('/register') do
  erb :register
end

post('/signup') do
  track = params.fetch('track')
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  email = params.fetch('email')
  github = params.fetch('github')
  @new_user = User.create!({:track => track, :first_name => first_name, :last_name => last_name, :email => email, :github => github })
  @users = User.all
  redirect "/users/#{@new_user.id}"
end

get '/survey' do
  erb(:survey)
end

post('/survey') do
  track = params.fetch('track')
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  email = params.fetch('email')
  github = params.fetch('github')
  @new_user = User.create({:track => track, :first_name => first_name, :last_name => last_name, :email => email, :github => github, :id => nil})
  @new_user_id = @new_user.id
  @surveys = Survey.all
  binding.pry
  redirect("/users/#{@new_user_id}")
end

get ('/users/:id') do
  @user = User.find(params[:id])
  @new_user_id = @user.id
  @users= User.all
  erb :users
end

post('/users/:id') do
  track = params.fetch('track')
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  email = params.fetch('email')
  github = params.fetch('github')
  @new_user = User.create({:track => track, :first_name => first_name, :last_name => last_name, :email => email, :github => github })

  erb(:users)
end

  get ('/survey/:id') do
    @user = User.find(params[:id])
    @new_user_id = @user.id
    erb(:survey)
  end

  post ('/survey/:id') do
    question1 = params.fetch('question1')
    question2 = params.fetch('question2')
    question3 = params.fetch('question3')
    question4 = params.fetch('question4')
    question5 = params.fetch('question5')
    @new_survey = Survey.create({:question1 => question1, :question2 => question2, :question3 => question3, :question4 => question4, :question5 => question5})
    @user = User.find(params[:id])
    survey = Survey.find(params[:id])
    @user.surveys << survey
    @new_user_id = @user.id
    erb(:users)
  end
