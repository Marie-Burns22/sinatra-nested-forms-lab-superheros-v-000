require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      params
      
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      
      params[:team][:members].each do |details|
        Hero.new(details)
      end
      
      @heros = Hero.all
      binding.pry
      erb :team
    end

end
