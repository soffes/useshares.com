require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

require 'sprockets'
map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/images'
  sprockets.append_path 'assets/javascripts'
  sprockets.append_path 'assets/stylesheets'
  run sprockets
end

require './shares'
run Shares
