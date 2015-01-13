class Landlord < ActiveRecord::Base
	has_many :properties
  def landlord_full_name
    first_name << " " << last_name
  end
end
