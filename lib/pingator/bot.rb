require 'net/http'

module Pingator
  class Bot
    def ping
      urls = list()
      urls.each do |url|
        puts "[PING] #{url}"
        uri = URI.parse(url)
        Net::HTTP.get_response uri
      end
    end

    def add!(url)
      Pingator.redis.sadd 'urls', url
    end

    def remove!(url)
      Pingator.redis.srem 'urls', url
    end

    def list
      Pingator.redis.smembers 'urls'
    end
  end
end
