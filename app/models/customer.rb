class Customer < ApplicationRecord
    has_many :building
    belongs_to :user
end
