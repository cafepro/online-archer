class Score < ActiveRecord::Base
	belongs_to :user
	belongs_to :score_type
	has_many   :arrows, dependent: :destroy
end
