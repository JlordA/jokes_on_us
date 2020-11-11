class Joke < ApplicationRecord
  belongs_to :user
  validates :content, presence: true

  
  def sorted_jokes
    test = Joke.sort_by {|joke|joke.like}.reverse
end
  
end
