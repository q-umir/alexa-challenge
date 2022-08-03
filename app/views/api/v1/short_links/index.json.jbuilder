json.array! @shortLinks do |shortLink|
  json.extract! shortLink, :id, :short_code, :url, :counter, :alexa_rank
end
