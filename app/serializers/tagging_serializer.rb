class TaggingSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :topic_id, :created_at, :updated_at
end
