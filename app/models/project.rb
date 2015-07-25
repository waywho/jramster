class Project < ActiveRecord::Base
	has_many :photos
	belongs_to :pages
end
