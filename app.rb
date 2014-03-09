require_relative './config/environment'
require 'sinatra'
require 'json'


class Zoreille < ActiveRecord::Base
end


class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  set :public_folder, Proc.new { File.expand_path("./public") }

  get '/' do
    @zoreilles = Zoreille.order('created_at DESC').all
    erb :index
  end


  get '/zoreilles' do
    content_type :json
    @zoreilles = Zoreille.order('created_at DESC').all
    @zoreilles.to_json
  end


  post '/zoreilles' do
    Zoreille.create!(body: params[:body], username: params[:username])
    redirect '/'
  end
end
