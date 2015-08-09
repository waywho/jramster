class Gallerization < ActiveRecord::Base
	belongs_to :project
	belongs_to :photo
end
