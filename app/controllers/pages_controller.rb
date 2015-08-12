class PagesController < ApplicationController

	def index
		@about = Page.find_by(:title => 'About')
		@diaries = Diary.all
		@projects = Project.all
	end

	def show
		@page = Page.friendly.find(params[:id])
	end

end
