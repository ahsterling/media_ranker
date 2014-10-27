class HomeController < ApplicationController
  def index
    @movies = Movie.order(votes: :desc).limit(5)
    @books = Book.order(votes: :desc).limit(5)
    @albums = Album.order(votes: :desc).limit(5)
  end

end
