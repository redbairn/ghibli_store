class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    belongs_to :role, optional: true
    has_one :address
    has_many :orders
    
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :remember_me, :admin, :role, :role_id)
  end
end
