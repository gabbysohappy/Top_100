class Billboard < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true 
    
    

    # has_many artists 
end
