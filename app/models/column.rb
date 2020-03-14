class Column < ApplicationRecord
    belongs_to :batteri, optional: true
    has_many :elevators
  end
