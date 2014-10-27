class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find_by(id: params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params.require(:album).permit(:title, :artist, :description))
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find_by(id: params[:id])
  end

  def update
    @album = Album.find_by(id: params[:id])
    if @album.update(params.require(:album).permit(:title, :artist, :description))
      redirect_to album_path(@album.id)
    else
      render :edit
    end
  end

end
