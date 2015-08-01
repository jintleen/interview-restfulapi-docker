json.array!(@post3s) do |post3|
  json.extract! post3, :id, :title, :content
  json.url post3_url(post3, format: :json)
end
