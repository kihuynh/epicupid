require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'home page', {:type => :feature} do
  it 'recognizes itself' do
    visit '/'
    expect(page).to have_xpath("/")
  end
end

describe 'register page', {:type => :feature} do
  it 'recognizes itself' do
    click_button 'join'
    expect(page).to have_xpath("/register")
  end
end
