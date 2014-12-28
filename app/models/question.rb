class Question < ActiveRecord::Base
	has_many :answers
	# has_many :upvotes, :foreign_key => 'question_id', :class_name => 'QuestionUpvote'
	# has_many :downvotes, :foreign_key => 'question_id', :class_name => 'QuestionDownvote'

	has_many :question_upvotes
	has_many :question_downvotes


	# def num_upvotes
	# 	self.upvotes.count
	# end

	# def num_downvotes
	# 	self.downvotes.count
	# end
end
