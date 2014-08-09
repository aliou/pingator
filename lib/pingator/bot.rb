require 'net/http'

module Pingator
  class Bot
    def ping
      urls = all()
      urls.each do |url|
        puts "[PING] #{url}"
        uri = URI.parse(url)
        Net::HTTP.get_response uri
      end
    end

    def add!(url)
      Pingator.redis.sadd 'urls', url
    end

    private
    def all
      Pingator.redis.smembers 'urls'
    end
  end
end
