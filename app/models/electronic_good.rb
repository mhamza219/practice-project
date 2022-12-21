class ElectronicGood < ApplicationRecord
	validates :name,  length: {minimum: 3}
	validates :price, presence: true
end
