class GamesController < ApplicationController
	enable_sync only: [:create, :update, :destroy, :add_score]

	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
	end

	def add_score
		@game = Game.find(params[:id])
		if params[:player] == "1"
			@game.player_1_score += 1
		elsif params[:player] == "2"
			@game.player_2_score += 1
		end

		@game.save
		render json: @game
	end
end
