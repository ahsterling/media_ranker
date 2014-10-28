class MoviesController < ApplicationController
  def index
    @movies = Movie.order(votes: :desc)
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :director, :description, :votes))
    @movie.votes = 0
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    if @movie.update(params.require(:movie).permit(:title, :director, :description, :votes))
      redirect_to movie_path(@movie.id)
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    if @movie.destroy
      redirect_to movies_path
    end
  end
end
