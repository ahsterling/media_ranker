class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_nav_links
  
  def set_nav_links
    @movies = Movie.order(votes: :desc).limit(5)
    @books = Book.order(votes: :desc).limit(5)
    @albums = Album.order(votes: :desc).limit(5)
  end
end
