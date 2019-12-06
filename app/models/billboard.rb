class Billboard < ApplicationRecord
    validates :name, :genre, :region, presence: true 

    has_many :artists
    has_many :songs
end
