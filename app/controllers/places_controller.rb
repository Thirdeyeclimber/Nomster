class PlacesController < ApplicationController

	def index
		@places = Place.all.paginate(:page => params[:page], :per_page => 1)
	end

end
