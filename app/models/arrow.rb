class Arrow < ActiveRecord::Base
	belongs_to :score
	validates :score_id, :value, :arrow, presence: true
end
