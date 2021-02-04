class Club < ApplicationRecord
    has_many :reviews
    has_many :gigs
    has_many :users, through: :gigs


    def upcoming_gigs
        self.gigs.sort_by {|gig| gig.date}
    end

end
