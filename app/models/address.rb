class Address < ApplicationRecord
    belongs_to :building
    belongs_to :address
end
