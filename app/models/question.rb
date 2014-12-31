class Question < ActiveRecord::Base
	has_many :answers, -> {includes(:answer_upvotes, :answer_downvotes)}, dependent: :destroy
	# has_many :upvotes, :foreign_key => 'question_id', :class_name => 'QuestionUpvote'
	# has_many :downvotes, :foreign_key => 'question_id', :class_name => 'QuestionDownvote'

	has_many :question_upvotes, dependent: :destroy
	has_many :question_downvotes, dependent: :destroy


	# def num_upvotes
	# 	self.upvotes.count
	# end

	# def num_downvotes
	# 	self.downvotes.count
	# end
end