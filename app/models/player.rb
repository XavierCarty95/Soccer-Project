class Player < ApplicationRecord
    has_many :contracts
    has_many :teams ,through: :contracts

    validates :name , presence: true 
    validates :name , uniqueness: true
    # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :goals , numericality: { only_integer: true }

    validates :assists , numericality: { only_integer: true }
    
end