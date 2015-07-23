require 'bundler'
require_relative 'models/funny.rb'
require_relative 'models/adventure.rb'
require_relative 'models/haunted.rb'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/funny_form' do
    @pos=Funny.new.pos
    erb :insert_words_funny
  end
  
  get '/adventure_form' do
    @pos=Adventure.new.pos
    erb :insert_words_adventure
  end
  
  get '/hunted_form' do
    @pos=Hunted.new.pos
    erb :insert_words_hunted
  end

end