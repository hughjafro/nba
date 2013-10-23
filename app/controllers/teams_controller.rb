class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end

	def new
		@team = Team.new
	end

	def show
		#params is a hash with a bunch  of ids
		@team = Team.find(params[:id])
	end

	def create
		@team = Team.create(params[:team].permit(:city, :name, :pg, :sg, :sf, :pf, :ctr))
		redirect_to :action => "show", :id =>@team._id
	end

	def destroy
		Team.find(params[:id]).destroy
		redirect_to teams_url #access destroy and send back to the home screen w/ refresh
	end

end