class Page < ActiveRecord::Base
	has_many :projects
	has_many :diaries
	extend FriendlyId

	friendly_id :title, use: [:slugged, :history]
end
