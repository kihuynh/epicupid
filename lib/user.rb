class User < ActiveRecord::Base
  has_many(:surveys)
  private

  validates(:track,{:presence => true})
  validates(:first_name, {:presence => true, :length => {maximum: 50}})
  validates(:last_name, {:presence => true, :length => {maximum: 50}})
  validates(:email, {:presence => true, :uniqueness => true, :length => {maximum: 50}})
  validates(:github, {:presence => true, :uniqueness => true, :length => {maximum: 50}})

  before_save(:normalize)
  private

  def normalize
    self.first_name = first_name.downcase.titleize
    self.last_name = last_name.downcase.titleize
  end
end
