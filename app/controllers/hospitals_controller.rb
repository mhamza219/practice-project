class HospitalsController < ApplicationController
	
	def index
		@hospitals = Hospital.all
	end

	def new
		@hospital = Hospital.new
	end

	def show
		@hospital = Hospital.find(params[:id])
	end

	def create
		@hospital = Hospital.new(hospital_params)
		@hospital.save
		redirect_to "/hospitals"
	end

	def edit
		@hospital = Hospital.find(params[:id])
	end

	def update
		@hospital = Hospital.find(params[:id])
		@hospital.update(hospital_params)
		redirect_to "/hospitals"
	end

	def destroy
		@hospital = Hospital.find(params[:id])
		@hospital.destroy
		redirect_to "/hospitals"
	end

	private

	def hospital_params
		params.require(:hospital).permit(:patient_name, :blood_group, :age, :address)
	end

end
