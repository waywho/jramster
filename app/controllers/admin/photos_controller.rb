class Admin::PhotosController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.create(photo_params)
		redirect_to admin_photos_path
	end

	private

	def photo_params
		params.require(:photo).permit(:caption, :description, :picture)
	end
end
