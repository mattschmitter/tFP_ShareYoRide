class RidesController < ApplicationController
	def index
		@ride = Ride.last
	end

	def new
		@ride = Ride.new
	end

	def create
		@ride = Ride.create(ride_params)
		if @ride.invalid?
			flash[:error] = "Could not save, one or more fields was invalid."
		end
		redirect_to root_path
	end

	private

	def ride_params
		params.require(:ride).permit(:year, :make, :model, :description)
	end
end
