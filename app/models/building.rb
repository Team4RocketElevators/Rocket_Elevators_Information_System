class Building < ApplicationRecord
    has_many :building_details
    has_many :batteris
    has_one :address
    belongs_to :customer, optional: true 
end
