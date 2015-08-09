class Photo < ActiveRecord::Base
	belongs_to :project
	has_many :gallerizations
	has_many :projects, :through => :gallerizations
	accepts_nested_attributes_for :gallerizations
	mount_uploader :picture, PictureUploader

	def default_caption
		File.basename(picture.filename, '.*').titleize
	end

end
