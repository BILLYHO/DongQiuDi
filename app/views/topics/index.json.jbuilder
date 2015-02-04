json.array!(@topics) do |topic|
  json.extract! topic, :id, :topic_id, :topic_type, :time, :title, :content
  json.url topic_url(topic, format: :json)
end
