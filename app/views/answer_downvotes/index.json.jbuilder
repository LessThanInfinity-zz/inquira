json.array!(@answer_downvotes) do |answer_downvote|
  json.extract! answer_downvote, :id
  json.url answer_downvote_url(answer_downvote, format: :json)
end
