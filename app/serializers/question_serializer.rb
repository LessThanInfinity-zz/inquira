class QuestionSerializer < ActiveModel::Serializer
	embed :ids, include: true

  attributes 	:id,
  						:title,
  						:description,
  						:asker_id,
  						:created_at,
  						# :num_upvotes,
  						# :num_downvotes,
  						:updated_at
  has_many :answers
  has_many :question_upvotes
  has_many :question_downvotes
end
