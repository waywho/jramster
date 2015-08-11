class Admin::DiariesController < ApplicationController
	before_action :authenticate_user!

	def index
		@diaries = Diary.all
	end

	def new
		@diary = Diary.new
	end

	def edit
		@diary = Diary.find(params[:id])
	end

	def update
		current_diary.update_attributes(diary_params)
		flash[:notice] = 'Updated!'
		redirect_to edit_admin_diary_path(current_diary)
	end

	def create
		@diary = Diary.create(diary_params)

		redirect_to admin_diaries_path
	end

	def destroy
		current_diary.destroy

		redirect_to admin_diaries_path
	end

	private

	def current_diary
		@current_diary ||= Diary.find(params[:id])
	end

	def diary_params
		params.require(:diary).permit(:title, :content, :date)
	end
end
