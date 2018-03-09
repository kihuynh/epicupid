ENV['RACK_ENV'] = 'test'
require 'rspec'
require 'pry'
require 'capybara'
require 'capybara/rspec'
require('sinatra')
require('sinatra/activerecord')
require 'pg'
require 'user'
require 'survey'

RSpec.configure do |config|
  config.after(:each) do
    User.all().each() do |user|
      user.destroy()
    end
    Survey.all().each() do |survey|
      survey.destroy()
    end
  end
end
