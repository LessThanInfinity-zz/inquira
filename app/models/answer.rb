class Answer < ActiveRecord::Base
	belongs_to :question
	has_many :upvotes, :foreign_key => 'answer_id', :class_name => 'AnswerUpvote'
	has_many :downvotes, :foreign_key => 'answer_id', :class_name => 'AnswerDownvote'
	# has_many :answer_upvotes
	# has_many :answer_downvotes


end
