class BandsController < ApplicationController
  # before_action :set_band, only: [:show, :edit, :update, :destroy]

  # GET /bands
  # GET /bands.json
  def index
    @bands = Band.all
    render :index
  end

  # GET /bands/1
  # GET /bands/1.json
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
  # POST /bands.json
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
  # PATCH/PUT /bands/1.json
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
  # DELETE /bands/1.json
  def destroy
    @band.destroy

  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def band_params
    params.require(:band).permit(:name)
  end
end
