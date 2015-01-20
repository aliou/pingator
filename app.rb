require 'sinatra'

class PingatorView < Sinatra::Base
  configure do
    set :views, 'app/views'
    set :public_dir, 'app/public'
    set :root, File.dirname(__FILE__)

    enable :sessions
    set :session_secret, ENV["SECRET_TOKEN"] || "secret!"
    enable :logging
  end
end
