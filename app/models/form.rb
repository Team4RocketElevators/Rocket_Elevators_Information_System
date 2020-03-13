class Form < ApplicationRecord
    validates :building, presence: true, exclusion: { in: ["empty"]}
    validates :quality, presence: true
end
