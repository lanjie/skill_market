class Worker < ActiveRecord::Base

	searchkick
	has_many :skills
	belongs_to :user
end
