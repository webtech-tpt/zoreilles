require_relative './config/environment'
require 'sinatra'


class Zoreille < ActiveRecord::Base
end


class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  set :public_folder, Proc.new { File.expand_path("./public") }

  get '/' do
    @zoreilles = Zoreille.order('created_at DESC').all
    erb :index
  end


  post '/zoreilles' do
    Zoreille.create!(body: params[:body], username: params[:username])
    redirect '/'
  end
end
