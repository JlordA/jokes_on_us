class GigsController < ApplicationController
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
        params.require(:gig).permit(:club, :user, :date, :price)
    end
    

end
