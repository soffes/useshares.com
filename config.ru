require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

require './shares'

use HireFireApp::Middleware if ENV['RACK_ENV'] == 'production'
run Shares
