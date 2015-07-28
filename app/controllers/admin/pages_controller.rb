class Admin::PagesController < ApplicationController
	before_action :authenticate_user!

	def index
		@pages = Page.all
	end

	def show	
	end

	def new
	end

	def edit
		@page = Page.friendly.find(params[:id])
	end

	def create
	end

	def destroy
	end
end
