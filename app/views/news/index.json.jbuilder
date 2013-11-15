json.array!(@news) do |news|
  json.extract! news, :title, :news_content, :external_link
  json.url news_url(news, format: :json)
end
