class Team < ApplicationRecord

    belongs_to :league
    has_many :contracts
    has_many :players , through: :contracts
    validates :name , uniqueness: true
    validates :name , presence: true
end
