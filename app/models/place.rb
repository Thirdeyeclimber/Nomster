class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode
	
	validates :address, :description, presence: true
	validates :name, length: { minimum: 2,
    too_short: "%{count} characters is the minimum allowed" }, presence: true
end
