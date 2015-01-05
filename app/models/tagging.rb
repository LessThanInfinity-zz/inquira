class Tagging < ActiveRecord::Base
	validates_uniqueness_of :question_id, :scope => :topic_id
	belongs_to :question
  belongs_to :topic
end
