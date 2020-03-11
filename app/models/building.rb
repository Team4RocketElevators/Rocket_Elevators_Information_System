class Building < ApplicationRecord
    has_many :building_details
    has_many :batteris
    has_one :address
end
