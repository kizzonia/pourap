class ProjectsController < ApplicationController
    before_action :authenticate_blogger!
  layout "bloggers", except:[:index, :show]
  before_action :set_about, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all.order('created_at DESC')
  end

  def show
    @projects = Project.all.order('created_at DESC').limit(4).offset(1)
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

    def update
      if @project.update(project_params)
        redirect_to @projects
      else
        render "edit"
      end
    end

      def destroy
        @project.destroy
        redirect_to @projects
      end


private
def set_project
  @project = Project.find(params[:id])
end
  def project_params
      params.require(:about).permit(:name, :date, :owner, :description, :link, :thumbnail)
    end
end
