#!/usr/bin/env ruby

require "haml"
require "rubygems"
require "sinatra"

class Swims < Sinatra::Base

  before do
    @page_title = "Swim."
  end

  get "/" do
    haml :index 
  end

  get "/signup" do
    haml :signup 
  end

  error 404 do
    haml :error 
  end

  def partial(page, options={})
    haml page.to_sym, options.merge!(:layout => false)
  end

end
