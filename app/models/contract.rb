class Contract < ApplicationRecord

    belongs_to :team 
    belongs_to :player

    validates :length, numericality: { greater_than_or_equal_to:1 ,  
    less_than_or_equal_to: 5 }
    validates :player_id, uniqueness: true 
   
end
