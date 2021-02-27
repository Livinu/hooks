require 'sinatra'
require "sinatra/reloader" if development?
require 'json'

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
end

get '/' do
    "Hello World"
  end