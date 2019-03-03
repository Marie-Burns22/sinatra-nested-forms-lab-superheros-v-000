require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      params
      
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      
      params[:team][:members].each do |hero|
        Hero.new(hero)
      end
      
      @heros = Hero.all
      
      erb :team
    end

end
