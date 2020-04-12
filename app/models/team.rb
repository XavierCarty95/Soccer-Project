class Team < ApplicationRecord

    belongs_to :league
    has_many :contracts
    has_many :players , through: :contracts
end
