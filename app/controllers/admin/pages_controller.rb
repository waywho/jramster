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

	def update
		current_page.update_attributes(page_params)
		flash[:notice] = 'Updated!'
		redirect_to edit_admin_page_path(current_page)
	end

	def create
	end

	def destroy
	end

	private

	def current_page
		@current_page ||= Page.friendly.find(params[:id])
	end

	def page_params
		params.require(:page).permit(:title, :content)
	end
end
