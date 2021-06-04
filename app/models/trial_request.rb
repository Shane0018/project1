class TrialRequest < ApplicationRecord
    has_and_belongs_to_many :gowns 
    belongs_to :user
    has_one :available_time
end
