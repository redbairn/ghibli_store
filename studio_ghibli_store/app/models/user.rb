class User < ApplicationRecord
    has_one :user_registration
    has_one :role
    has_one :address
    has_many :login
    has_many :order
end
