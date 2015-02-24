class WelcomeController < ApplicationController
	def index
    @properties = Property.all
    @all_property_markers = Gmaps4rails.build_markers(@properties) do |property, marker|
      puts property.latitude
      marker.lat property.latitude
      marker.lng property.longitude
      marker.infowindow view_context.link_to property.address, "properties/" + property.id.to_s
    puts @all_property_markers
    end
	end
  def get_data
    @properties = [Property.where.not(active_job:nil).count, Property.all.count]
    respond_to do |format|
      format.json { render json: @properties }
    end
  end
end
