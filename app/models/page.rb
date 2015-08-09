class Page < ActiveRecord::Base
	has_many :projects
	extend FriendlyId

	friendly_id :title, use: [:slugged, :history]
end
