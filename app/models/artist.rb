class Artist < ApplicationRecord
    has_many :song
    belongs_to :billboard
end
