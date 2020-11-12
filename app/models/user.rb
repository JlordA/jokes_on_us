class User < ApplicationRecord
    has_many :jokes, dependent: :destroy
    has_many :gigs, dependent: :destroy
    has_many :clubs, through: :gigs
    validates :name, :age, :user_name, :email, :hometown, presence: true 


    has_secure_password

    def featured_jokes
        test = self.jokes.max_by {|joke| joke.like}
    end

    def upcoming_gigs
        self.gigs.sort_by {|gig| gig.date}
    end

    def dogshit_joke
        test = self.jokes.max_by {|joke| joke.dislike}
    end

end
