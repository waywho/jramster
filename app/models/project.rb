class Project < ActiveRecord::Base
	has_many :gallerizations
	has_many :photos, :through => :gallerizations
	belongs_to :pages

	mount_uploader :feature_image, PictureUploader

end
