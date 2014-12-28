class AnswerUpvote < ActiveRecord::Base
	validates :answer_id, uniqueness: {scope: :user_id}
	belongs_to :answer
end
