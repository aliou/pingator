require 'rubygems'
require 'redis'

module Pingator

  module_function
  def redis
    @@redis ||= begin
      uri = URI.parse(ENV["REDISTOGO_URL"])
      Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
    end
  end
end

require 'pingator/bot'
