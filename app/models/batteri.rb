class Batteri < ApplicationRecord
    has_many :columns
    belongs_to :building, optional: true
    belongs_to :employee, optional: true
end
