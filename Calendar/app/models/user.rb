class User < ActiveRecord::Base
  has_many :meetings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def has_name?
     name.blank? ? 'Not indicated' : name
   end
end
