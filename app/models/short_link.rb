class ShortLink < ApplicationRecord
    validates_presence_of :url
    validates :url, format: URI::regexp(%w[http https])
    validates_uniqueness_of :short_code
    validates_length_of :url, within: 3..255, on: :create, message: "too long"
    validates_length_of :short_code, within: 3..255, on: :create, message: "too long"
end
