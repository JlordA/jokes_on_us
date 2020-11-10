class JokesController < ApplicationController

    def index 
        @jokes = Joke.all
    end 

    def new
        @joke = Joke.new

    end

    def create
        @joke = Joke.create(joke_params)
        if @joke.valid?
            redirect_to user_path(@joke.user)
        else 
            flash[:my_errors] = @joke.errors.full_messages
            redirect_to new_joke_path
        end
       
        
    end

    def show
        @joke = Joke.find(params[:id])
    end

    


    private

    def joke_params
        params.require(:joke).permit(:user_id, :like, :dislike, :content)
    end
    
end
