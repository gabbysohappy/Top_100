class Artist < ApplicationRecord
    validates :name, :genre, presence: true 
    
    has_many :songs, dependent: :destroy
end
