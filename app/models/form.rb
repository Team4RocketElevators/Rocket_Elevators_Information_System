class Form < ApplicationRecord
    validates :building, presence: true
    validates :quality, presence: true
end
