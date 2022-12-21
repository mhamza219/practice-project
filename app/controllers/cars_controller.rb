class CarsController < ApplicationController


	def index
		@cars = Car.all
	end

	def new
		@car = Car.new
	end

	def show
		@car = Car.find(params[:id])
	end

	def create
		@car = Car.new(car_params)
		@car.save
		redirect_to "/cars"
	end

	def edit
		@car = Car.find(params[:id])
	end

	def update
		@car = Car.find(params[:id])
		@car.update(car_params)
		redirect_to "/cars"
	end

	def destroy
		@car = Car.find(params[:id])
		@car.destroy
		redirect_to "/cars"
	end

	private

	def car_params
		params.require(:car).permit(:name, :description, :price)
	end

	
end


