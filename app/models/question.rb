class Question < ActiveRecord::Base
	has_many :answers
	has_many :upvotes, :foreign_key => 'question_id', :class_name => 'QuestionUpvote'
	has_many :downvotes, :foreign_key => 'question_id', :class_name => 'QuestionDownvote'
	# has_many :upvotes, :source => :question_upvote
	# has_many :question_downvotes

end
