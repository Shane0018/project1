class User < ApplicationRecord
    has_secure_password
    has_many :trial_requests
    has_many :favourite_lists
end
