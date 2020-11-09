class GigsController < ApplicationController

    def index 
        @gigs = Gig.all
    end 

    def new
        @gig = Gig.new
    end

    def create
        @gig = Gig.create(gig_params)
        if @gig.valid?
            redirect_to user_path(@gig.user)
        else 
            flash[:my_errors] = @gig.errors.full_messages
            redirect_to new_gig_path
        end
    end

    def show
        @gig = Gig.find(params[:id])
    end

    


    private

    def gig_params
        params.require(:gig).permit(:club_id, :user_id, :date, :price)
    end
    

end
