class Building < ApplicationRecord
    has_many :building_details
    has_many :batteris
    belongs_to :address, optional: true
    belongs_to :customer, optional: true 
end
