json.array!(@question_downvotes) do |question_downvote|
  json.extract! question_downvote, :id
  json.url question_downvote_url(question_downvote, format: :json)
end
