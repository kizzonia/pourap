class ProjectsController < ApplicationController
  layout "bloggers", except:[:index, :show]
  before_action :set_about, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all.order('created_at DESC')
  end

  def show
  end

  def new
    @projects = Project.new
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

    def update
      if @project.update(project_params)
        redirect_to @project
      else
        render "edit"
      end

      def destroy
        @project.destroy
        redirect_to @projects
      end
  end

private
def set_project
  @project = Project.find(params[:id])
end
  def project_params
      params.require(:about).permit(:name, :date, :owner, :description, :link, :thumbnail)
    end
end
