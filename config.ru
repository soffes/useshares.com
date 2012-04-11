require 'rubygems'
require 'bundler'
Bundler.require

require './shares'

use HireFireApp::Middleware if ENV['RACK_ENV'] == 'production'
run Shares
