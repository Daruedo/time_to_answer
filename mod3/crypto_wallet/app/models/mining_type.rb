class MiningType < ApplicationRecord
    has_many :coins
    validates :description, presence: true
end
