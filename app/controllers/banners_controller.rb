class BannersController < ApplicationController
  layout "bloggers", except:[:index, :show]
  before_action :set_banner, only: [:show, :edit, :update, :destroy]

  # GET /banners
  # GET /banners.json
  def index
    @banners = Banner.all.order('created_at DESC').limit(2)
  end

  # GET /banners/1
  # GET /banners/1.json
  def show
  @banners = Banner.all
  end

  # GET /banners/new
  def new
    @banner = Banner.new
  end

  # GET /banners/1/edit
  def edit
  end

  # POST /banners
  # POST /banners.json
  def create
    @banner = Banner.new(banner_params)

    respond_to do |format|
      if @banner.save
        format.html { redirect_to root_path, notice: 'banner was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banners/1
  # PATCH/PUT /banners/1.json
  def update
    respond_to do |format|
      if @banner.update(banner_params)
        format.html { redirect_to root_path, notice: 'banner was successfully updated.' }
        format.json { render :show, status: :ok, location: @banner }
      else
        format.html { render :edit }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banners/1
  # DELETE /banners/1.json
  def destroy
    @banner.destroy
    respond_to do |format|
      format.html { redirect_to banners_url, notice: 'banner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end






  private

  # Use callbacks to share common setup or constraints between actions.
  def set_banner
    @banner = banner.find(params[:id])
  end
    def banner_params
      params.require(:banner).permit(:qoute, :qouter)
    end

end
