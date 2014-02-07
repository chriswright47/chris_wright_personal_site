class ProjectsController < ApplicationController
  before_filter :signed_in_user, except: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new()
  end

  def create
    Project.create(params[:project])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    project.update_attributes(params[:project])
    redirect_to project_path(project)
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
  end

  private
  def signed_in_user
    redirect_to projects_path unless current_user
  end
end
