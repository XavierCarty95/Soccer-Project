class Contract < ApplicationRecord

    belongs_to :team 
    belongs_to :player

    validates :length, length: { in: 1..10 }
    
end
