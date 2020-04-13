class Player < ApplicationRecord
    has_many :contracts
    has_many :teams ,through: :contracts

    validates :name , presence: true 
    validates :name , uniqueness: true

    validates :goals , numericality: { only_integer: true }

    validates :assists , numericality: { only_integer: true }
    
end
