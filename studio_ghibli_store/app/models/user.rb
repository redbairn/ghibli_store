class User < ApplicationRecord
    has_one :user_detail, :role
end
