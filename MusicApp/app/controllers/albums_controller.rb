class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(band_params)

    if @album.save
      redirect_to album_url(@album)
    else

    end
  end

  def album_params
    params.require(:album).permit(:name, :live, :band_id)
  end

end
