require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

	get '/reversename/:name' do 
	"#{params[:name].reverse}"
	end

	get '/square/:number' do 
		numbo = params[:number].to_i * params[:number].to_i
		"#{numbo}"
	end

	get '/say/:number/:phrase' do 
		phrase = params[:phrase] + "\n"
		phraselist = []
		(params[:number].to_i).times do
			phraselist << phrase
		end
		"#{phraselist.inject(:+)}"
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do 
		words = [params[:word1], 
		params[:word2], 
		params[:word3], 
		params[:word4],
		params[:word5]]
		"#{words.join(' ') + "."}"
	end

	get '/:operation/:number1/:number2' do 
		erb :operations
	end

end