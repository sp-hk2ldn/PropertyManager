class Work < ActiveRecord::Base
	belongs_to :property
	validates :property_id, presence: true

end
