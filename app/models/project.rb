class Project < ActiveRecord::Base
	has_and_belongs_to_many :photos
	belongs_to :pages

	mount_uploader :feature_image, PictureUploader
end
