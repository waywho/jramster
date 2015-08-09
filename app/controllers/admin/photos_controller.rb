class Admin::PhotosController < ApplicationController
	before_action :authenticate_user!

	def index
		@photos = Photo.all
		@photo = Photo.new
		@projects = Project.all
	end

	def new
		@photo = Photo.new
		@projects = Project.all
	end

	def create
		@photo = Photo.create(photo_params)
	end

	def edit_multiple
		@photos = Photo.where(project_id: nil)
		@projects = Project.all
		@project_gallery = Gallerization.new
	end

	def update_multiple
		@photos = Photo.find(gallerization_params[:photo_ids])
		@projects = Project.find(gallerization_params[:project_id])
		@photos.each do |photo|
			@projects.each do |project|
				photo.gallerizations.create(:project_id => project.id)
			end
		end

		redirect_to admin_photos_path
	end

	def update
	end

	private

	def photo_params
		params.require(:photo).permit(:caption, :picture, { :project_ids => [] }, :remote_picture_url)
	end

	def gallerization_params
		params.require(:gallerization).permit({:photo_ids =>[], :project_id => []})
	end
end
