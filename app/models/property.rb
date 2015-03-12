class Property < ActiveRecord::Base
  before_destroy :check_for_works

  def check_for_works
    errors.add :base, "Close any outstanding works before deletion."
    false
  end


	geocoded_by :address
	before_validation :geocode, :if => :address_changed?

	belongs_to :landlord
	has_one :tenant
	
	validates :latitude, :longitude, :landlord, presence: true
	accepts_nested_attributes_for :landlord, :tenant

	has_many :works
end
