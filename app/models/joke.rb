class Joke < ApplicationRecord
  belongs_to :user
  validates :content, :user_id, presence: true

  
  # def sorted_jokes
  #   self.sort_by {|joke|joke.like}.reverse
  # end
  
  # <%@sorted_jokes = @jokes.sort_by {|joke|joke.like}.reverse %>
  
end
