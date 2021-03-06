class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :token_uthenticatable

         has_many :products
         has_many :pants
         has_many :shirts
         has_many :checkouts 

  	def skip_confirmation!
  		self.confirmed_at = Time.now
	end

def admin?
  self.admin
  
end
end
