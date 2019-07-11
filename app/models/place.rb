class Place < ApplicationRecord
	belongs_to :user
	has_many :comments

	geocoded_by :address
	after_validation :geocode
	
	validates :name, length: { minimum: 2,
    too_short: "%{count} characters is the minimum allowed" }, presence: true
  validates :address, :description, presence: true
end
