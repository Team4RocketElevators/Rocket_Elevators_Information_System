class Column < ApplicationRecord
    belongs_to :batteris
    has_many :elevator
  end