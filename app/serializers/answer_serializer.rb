class AnswerSerializer < ActiveModel::Serializer
	embed :ids, include: true
	
  attributes 	:id,
  						:body,
  						:question_id,
  						:user_id,
  						:anonymous,
  						:created_at,
  						:updated_at

  has_many :answer_upvotes
  has_many :answer_downvotes

end
