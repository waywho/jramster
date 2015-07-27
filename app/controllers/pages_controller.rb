class PagesController < ApplicationController

	def index
		@about = Page.find_by(:title => 'About')
	end

	def show
		@page = Page.friendly.find(params[:id])
	end

end
