class ProjectsController < ApplicationController
  before_filter :signed_in_user, except: [:index, :show]

  def index
    @projects = Project.all
    @code_samples = CodeSample.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    project Project.create(project_params)
    redirect_to project
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    project.update_attributes(project_params)
    redirect_to project_path(project)
  end

  def destroy
     Project.find(params[:id]).destroy
  end

  private
  def project_params
    params.require(:project).permit(:name, :company, :description, :url_path)
  end

  def signed_in_user
    redirect_to projects_path unless current_user
  end
end
