class TracksController < ApplicationController
  before_action :require_user!

  def index
    @tracks = Track.all
    render :index
  end

  def show
    @track = Track.find_by(id: params[:id])
    render :show
  end

  def new
    @track = Track.new
    render :new
  end

  def create
    @track = Track.new(band_params)

    if @track.save
      redirect_to track_url(@track)
    else

    end
  end

  def track_params
    params.require(:track).permit(:name, :lyrics, :bonus, :album_id)
  end

end
