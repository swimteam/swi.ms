#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

before do
  @page_title = 'Swim.'
end

get '/' do
  File.read(File.join('public', 'index.html'))
end

error 404 do
  File.read(File.join('public', '404.html'))
end

