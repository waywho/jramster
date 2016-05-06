class PagesController < ApplicationController

	def index
		@pages = Page.all
	end

	def show
		@page = Page.friendly.find(params[:id])
	end

	def new
	end

end
