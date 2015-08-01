json.array!(@post2s) do |post2|
  json.extract! post2, :id, :title, :content
  json.url post2_url(post2, format: :json)
end
