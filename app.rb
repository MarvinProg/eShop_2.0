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

post '/cart' do 
	input_orders = params[:orders]
	@orders = orders_line_parse input_orders
	erb :cart
end

def orders_line_parse input_orders 
  str_1 = input_orders.split(",")

  arr_1 = []

  str_1.each do |s|
    str_2 = s.split("=")
    str_3 = str_2[0].split("_")

    id = str_3[1]
    count = str_2[1]

    arr_2 = [id, count]
    arr_1.push(arr_2)
  end

  return arr_1
end