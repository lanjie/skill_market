class Skill < ActiveRecord::Base
	searchkick
  belongs_to :worker
end
