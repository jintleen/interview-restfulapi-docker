json.array!(@post4s) do |post4|
  json.extract! post4, :id, :title, :content
  json.url post4_url(post4, format: :json)
end
