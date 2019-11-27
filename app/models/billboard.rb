class Billboard < ApplicationRecord
    validates :name, presence: true 
    
    has_many :artists, through: :songs
    has_many :songs
end
