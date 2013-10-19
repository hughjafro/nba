class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end

	def show
		#params is a hash with a bunch  of ids
		@team = Team.find.(params[:id])
	end
end