require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**.*.rb')
require('./lib/user')
require('./lib/survey')
require('pry')
require('pg')

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

post('/users') do
  track = params.fetch('track')
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  email = params.fetch('email')
  github = params.fetch('github')
  @new_user = User.create({:track => track, :first_name => first_name, :last_name => last_name, :email => email, :github => github, :id => nil})
  @users = User.all
  erb(:users)
end

get('/survey') do
  @users = User.all
  erb(:survey)
end

post('/survey') do
  @users = User.all
  erb(:survey)
end
