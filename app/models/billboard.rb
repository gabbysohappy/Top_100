class Billboard < ApplicationRecord
    has_many :artists 
    has_many :albums, through: :artists
    has_many :songs, through: :albums
    validates :name, presence: true 
end
