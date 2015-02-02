json.array!(@news) do |news|
  json.extract! news, :id, :news_id, :time, :title, :content
  json.url news_url(news, format: :json)
end
