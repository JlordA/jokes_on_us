class ReviewsController < ApplicationController

    def index 
        @reviews = Review.all
    end 
    
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to club_path(@review.club)
        else 
            flash[:my_errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
    end

    def show
        @review = Review.find(params[:id])
    end

    


    private

    def review_params
        params.require(:review).permit(:club_id, :rating, :date, :content)
    end
    
end
