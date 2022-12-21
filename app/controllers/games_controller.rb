class GamesController < ApplicationController

	def index
		@games = Game.all
	end

	def new
		@game = Game.new
	end

	def show
		@game = Game.find(params[:id])
	end

	def create
		@game = Game.new(game_params)
		@game.save
		redirect_to "/games"
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])
		@game.update(game_params)
		redirect_to "/games"
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
		redirect_to "/games"
	end

	private

	def game_params
		params.require(:game).permit(:name, :description, :price, :rating)
	end

end
