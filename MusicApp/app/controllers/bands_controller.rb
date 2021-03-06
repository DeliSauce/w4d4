class BandsController < ApplicationController
  before_action :require_user!

  # GET /bands
  def index
    @bands = Band.all
    render :index
  end

  # GET /bands/1
  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  # GET /bands/new
  def new
    @band = Band.new
    render :new
  end

  # POST /bands
  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end

  # GET /bands/1/edit
  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  # PATCH/PUT /bands/1
  def update
    @band = Band.find(params[:id])
    if @band.update(band_params)
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :edit
    end
  end

  # DELETE /bands/1
  def destroy
    @band.destroy

  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def band_params
    params.require(:band).permit(:name)
  end
end
