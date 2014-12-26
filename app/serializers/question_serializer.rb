class QuestionSerializer < ActiveModel::Serializer
  attributes 	:id,
  						:title,
  						:description,
  						:asker_id,
  						:created_at,
  						:updated_at
end
