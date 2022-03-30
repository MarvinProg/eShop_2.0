#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sqlite3'

set :database, {adapter: "sqlite3", database: "my_db_eshop.db"}

class Product < ActiveRecord::Base
	
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about_us' do 
	erb :about_us
end