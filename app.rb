require_relative './config/environment'
require 'sinatra'


class Zoreille < ActiveRecord::Base
end


class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  set :public_folder, Proc.new { File.expand_path("./public") }

  get '/' do
    erb :index
  end

end
