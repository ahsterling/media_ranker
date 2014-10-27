class HomeController < ApplicationController
  def index
    @movies = Movie.all.limit(5)
    @books = Book.all.limit(5)
    @albums = Album.all.limit(5)
  end
end
