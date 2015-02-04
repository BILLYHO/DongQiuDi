json.array!(@topics) do |topic|
  json.extract! topic, :id, :topic_id, :title
  json.url topic_url(topic, format: :json)
end
