class User < ActiveRecord::Base
  has_many :meetings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def has_name?
    name.blank? ? 'Not indicated' : name
  end
end
