json.array!(@answer_upvotes) do |answer_upvote|
  json.extract! answer_upvote, :id
  json.url answer_upvote_url(answer_upvote, format: :json)
end
