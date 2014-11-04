class Property < ActiveRecord::Base
	geocoded_by :address
	before_validation :geocode, :if => :address_changed?

	belongs_to :landlord
	has_one :tenant
	
	validates :latitude, :longitude, :landlord, presence: true
	accepts_nested_attributes_for :landlord, :tenant
end
