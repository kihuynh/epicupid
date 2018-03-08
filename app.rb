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
  erb(:register)
end
