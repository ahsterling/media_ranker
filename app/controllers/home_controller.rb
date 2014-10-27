class HomeController < ApplicationController
  def index
    @movies = Movie.all.sort_by { |votes| votes }.reverse
    @books = Book.all.sort_by { |votes| votes }.reverse
    @albums = Album.all.sort_by { |votes| votes }.reverse
  end

end
