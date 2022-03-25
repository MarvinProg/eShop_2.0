#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

get '/about_us' do 
	erb :about_us
end