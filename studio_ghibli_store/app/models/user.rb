class User < ApplicationRecord
    has_one :user_registration
    has_one :user_detail
    has_one :role
    has_one :address
    has_many :login
    has_many :orders
end

class UserDetail < ApplicationRecord
    belongs_to :user
end
