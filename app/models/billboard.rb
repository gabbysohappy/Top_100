class Billboard < ApplicationRecord
    validates :name, :genre, :region, presence: true 

    has_many :artists, through: :songs
    has_many :songs
end
