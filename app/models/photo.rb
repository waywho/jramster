class Photo < ActiveRecord::Base
	belongs_to :page
	belongs_to :project
	mount_uploader :picture, PictureUploader
end
