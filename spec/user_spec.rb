require 'spec_helper'

describe (User) do
  it {have_many(:surveys)}

  it('saves user information') do
    user = User.new({:track => "Ruby", :first_name => "Alex", :last_name => "Ficklin", :email => "a.ficklin11@gmail.com", :github => "https://github.com/kihuynh"})
    user.save
    expect(user.track).to eq "Ruby"
    expect(user.first_name).to eq "Alex"
    expect(user.last_name).to eq "Ficklin"
    expect(user.email).to eq "a.ficklin11@gmail.com"
    expect(user.github).to eq "https://github.com/kihuynh"
  end
  it('validate presence of user info') do
    user = User.new({:track => "", :first_name => "", :last_name => "", :email => "", :github => ""})
    expect(user.save). to eq false
  end

  it('validates length of first name is at most 50 characters') do
   user = User.new({:first_name => "a".*(51)})
   expect(user.save).to(eq(false))
  end

  it('validates length of last name is at most 50 characters') do
  user = User.new({:last_name => "a".*(51)})
  expect(user.save).to(eq(false))
  end

  it "validates uniqueness of email" do
  user = User.new({:email => 'kh@yahoo.com'})
  user2 = User.new({:email => 'kh@yahoo.com'})
  expect(user.save).to(eq(false))
  end
end
