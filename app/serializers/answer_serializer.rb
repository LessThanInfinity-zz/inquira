class AnswerSerializer < ActiveModel::Serializer
  attributes 	:id,
  						:body,
  						:question_id,
  						:user_id,
  						:anonymous,
  						:created_at,
  						:updated_at
end
