class Admin::PhotoController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@project = Project.find(params[:project_id])
		@project.photos.create(photo_params)
		redirect_to edit_admin_project_path(@project)
	end

	private

	def photo_params
		params.require(:photo).permit(:description, :feature_img, :picture)
	end
end
