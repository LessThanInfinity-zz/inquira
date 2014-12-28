class QuestionDownvote < ActiveRecord::Base
	validates :question_id, uniqueness: {scope: :user_id}
	belongs_to :question
end
