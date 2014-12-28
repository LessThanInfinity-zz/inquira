class AnswerUpvoteSerializer < ActiveModel::Serializer
  attributes :id :user_id, :answer_id
end
