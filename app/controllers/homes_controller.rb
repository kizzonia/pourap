class HomesController < ApplicationController
  layout "bloggers", except:[:index, :show]
  before_action :set_about, only: [:show, :edit, :update, :destroy]

  def index
    @homes = Home.all.order("created_at DESC").limit(2)
    @abouts = About.all

  end

  def show
    @homes = Home.all.order("created_at DESC").limit(1)

  end

  def edit
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @home.update
      redirect_to @home
    else
      render 'edit'
    end
  end

  def destroy
    @home.destroy

    redirect_to @homes
  end

  private
    def set_homes
      @home = Home.find(params[:id])
    end

    def home_params
      params.require(:about).permit(:picture_name, :thumbnail)
    end
end
