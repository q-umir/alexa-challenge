json.extract! @shortLinks, :id, :short_code, :url, :counter, :alexa_rank
json.comments @shortLinks.comments do |comment|
  json.extract! comment, :id, :short_code, :alexa_rank
end
