class Contract < ApplicationRecord

    belongs_to :team 
    belongs_to :player

    validates :length, numericality: {  
    less_than_or_equal_to: 3 }
    validates :player_id, uniqueness: true 
   
end
