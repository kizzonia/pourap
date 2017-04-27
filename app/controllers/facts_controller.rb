class FactsController < ApplicationController
  before_action :authenticate_blogger!, except: [:index, :show]
  layout "bloggers", except:[:index, :show, :search]
  before_action :set_fact, only: [:show, :edit, :update, :destroy]

  def index
    @facts = Fact.all.order('created_at DESC').limit(1)
    @videos = Video.highest_voted.all.limit(10)
    @musics = Music.highest_voted.all.limit(10)
    @abouts = About.all.order("created_at DESC").limit(1)

  end

  def show
    @videos = Video.highest_voted.all.limit(10)
    @musics = Music.highest_voted.all.limit(10)
  end

  def new
    @fact = Fact.new
  end

  def edit
  end

  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      redirect_to root_path
      flash = { success: "Congratulations!! Created Successfully", error: "Action Not Successfull." }
    else
      render 'new'
    end
  end

    def update
      if @fact.update(fact_params)

        redirect_to root_path
        flash = { success: "Congratulations!! Updated Successfully", error: "Action Not Successfull." }

      else
        render "edit"
      end
    end

      def destroy
        @fact.destroy
        flash = { success: "Congratulations!! Deleted Successfully", error: "Action Not Successfull." }

        redirect_to root_path
      end

  private
  def set_fact
    @fact = Fact.find(params[:id])
  end
    def fact_params
      params.require(:fact).permit(:fun1, :fun2, :fun3, :thumbnail)
    end
end
