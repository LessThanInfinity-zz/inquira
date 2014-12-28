json.array!(@question_upvotes) do |question_upvote|
  json.extract! question_upvote, :id
  json.url question_upvote_url(question_upvote, format: :json)
end
