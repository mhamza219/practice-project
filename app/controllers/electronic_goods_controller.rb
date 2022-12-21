class ElectronicGoodsController < ApplicationController

	def index
		@electronic_goods = ElectronicGood.all
	end

	def new
		@electronic_good = ElectronicGood.new
		# @electronic_good.save
	end

	def show
		@electronic_good = ElectronicGood.find(params[:id])
	end

	def create
		@electronic_good = ElectronicGood.new(electronic_good_params)
		if @electronic_good.save
		redirect_to "/electronic_goods/new"
		else
		render :new
		end
	end

	def edit
		@electronic_good = ElectronicGood.find(params[:id])
	end

	def update
		@electronic_good = ElectronicGood.find(params[:id])
		@electronic_good.update(electronic_good_params)
		redirect_to "/electronic_goods"
	end

	def destroy
		@electronic_good = ElectronicGood.find(params[:id])
		@electronic_good.destroy
		redirect_to "/electronic_goods"
	end

	private

	def electronic_good_params
		params.require(:electronic_good).permit(:name, :price, :delivery_address, :pincode)
	end

end
