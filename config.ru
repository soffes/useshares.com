require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

require 'sprockets'
map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/images'
  run sprockets
end

require './shares'
run Shares
