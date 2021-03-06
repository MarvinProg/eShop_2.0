#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sqlite3'

set :database, {adapter: "sqlite3", database: "my_db_eshop.db"}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about_us' do 
	erb :about_us
end

post '/cart' do 
	@input_orders = params[:input_orders]
	@orders = orders_line_parse @input_orders

  if @orders.length == 0
    return erb :empty_cart
  end

  @orders.each do |item|
    item[0] = Product.find(item[0])
  end

	erb :cart
end

def orders_line_parse input_orders 
  str_1 = @input_orders.split(",")

  arr_1 = []

  str_1.each do |s|
    str_2 = s.split("=")
    str_3 = str_2[0].split("_")

    id = str_3[1]
    count = str_2[1]

    arr_2 = [id, count]
    arr_1.push(arr_2)
  end

  # @arr_test = arr_1 
  # @total = 0

  # @arr_test.each do |a|
  #   a.each do |str|
  #     count = str[1].to_i
  #     @total += count
  #     @total_price = @total
  #   end
  # end

  return arr_1
end

post '/order_place' do 
  @order = Order.create params[:order]
  erb :order_place
end