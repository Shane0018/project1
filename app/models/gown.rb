class Gown < ApplicationRecord
    has_and_belongs_to_many :favourite_lists
    has_and_belongs_to_many :trial_requests
end
