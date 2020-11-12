class User < ApplicationRecord
    has_many :jokes
    has_many :gigs
    has_many :clubs, through: :gigs
    validates :name, :age, :user_name, :email, :hometown, presence: true 


    has_secure_password

    def featured_jokes
        
        test = self.jokes.max_by {|joke| joke.like}
    end

    
end
