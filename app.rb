require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :"pirates/index"
    end
    
    
    get '/new' do
      erb :"pirates/new"
    end 
    
    post '/pirates' do
      @student = Pirate.new(params[:student])
 
      params[:student][:courses].each do |details|
        Course.new(details)
      end
     
      @courses = Course.all
      erb :"pirates/show"
    end
    
  end
end
