class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    #has_one :user_registrations
    belongs_to :role
    has_one :address
    #has_many :logins
    has_many :orders
    
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :remember_me)
  end
end
