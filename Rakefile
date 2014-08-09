require 'rubygems'

$LOAD_PATH.unshift 'lib'
require 'pingator'

namespace :bot do
  desc 'Ping all the things'
  task :ping do
    bot = Pingator::Bot.new
    bot.ping
  end

  desc 'Add an URL'
  task :add, :url do |t, args|
    bot = Pingator::Bot.new
    bot.add!(args[:url])
  end
end
