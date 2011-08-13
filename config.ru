#require "rubygems"
require "bundler"
Bundler.setup
require "./site.rb"

# Replace the directory names to taste
use Rack::Static, :urls => ['/images', '/stylesheets', '/javascripts'], :root => 'public'

run Swims
