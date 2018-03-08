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
  @users = User.all
  erb(:register)
end

get('/users') do
  @users = User.all
  erb(:users)
end

get('/survey') do
  @surveys = Survey.all
  erb(:survey)
end

get('/survey2') do
  @surveys = Survey.all
  erb(:survey2)
end

get('/survey3') do
  @surveys = Survey.all
  erb(:survey3)
end

post('/survey') do
  track = params.fetch('track')
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  email = params.fetch('email')
  github = params.fetch('github')
  @new_user = User.create({:track => track, :first_name => first_name, :last_name => last_name, :email => email, :github => github, :id => nil})
  @users = User.all
  erb(:survey)
end

post('/survey2') do
  question1 = params.fetch('question1')
  @question_1 = Survey.create({:question1 => question1, :id => nil})
  @surveys = Survey.all
  erb(:survey2)
end

post('/survey3') do
  question3 = params.fetch('question3')
  @question_3 = Survey.create({:question3 => question3, :id => nil})
  @surveys = Survey.all
  erb(:survey3)
end
