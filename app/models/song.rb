class Song < ApplicationRecord
    validates :name, :genre, presence: true 
    
    belongs_to :artist
    belongs_to :billboard
end
