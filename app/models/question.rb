class Question < ActiveRecord::Base
	has_many :answers, -> {includes(:answer_upvotes, :answer_downvotes)}, dependent: :destroy

	has_many :question_upvotes, dependent: :destroy
	has_many :question_downvotes, dependent: :destroy

	has_many :taggings
	has_many :topics, through: :taggings

	# def num_upvotes
	# 	self.upvotes.count
	# end

	# def num_downvotes
	# 	self.downvotes.count
	# end

	def topic_list
	  self.topics.collect do |topic|
	    topic.title
	  end.join(", ")
	end

	def topic_list=(topics_string)
		if topics_string == nil
			topics_string = ""
		end
		
	  topic_titles = topics_string.split(",").collect{|s| s.strip.downcase}.uniq
	  new_or_found_topics = topic_titles.collect { |title| Topic.find_or_create_by(title: title) }
	  self.topics = new_or_found_topics
	end

end