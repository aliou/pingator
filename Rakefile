require 'rubygems'

$LOAD_PATH.unshift 'lib'
require 'pingator'

namespace :bot do
  desc 'Ping the URLs'
  task :ping do
    bot = Pingator::Bot.new
    bot.ping
  end

  desc 'Add an URL'
  task :add, :url do |t, args|
    bot = Pingator::Bot.new
    bot.add!(args[:url])
  end

  desc 'Remove an URL'
  task :remove, :url do |t, args|
    bot = Pingator::Bot.new
    bot.remove!(args[:url])
  end

  desc 'List the URLs'
  task :list do
    bot = Pingator::Bot.new
    puts bot.list
  end
end
