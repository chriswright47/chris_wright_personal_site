class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    redirect_to home_page_path unless current_user
    @project = Project.new()
  end

  def create
    if current_user
      Project.create(params[:project])
    end
    redirect_to projects_path
  end

  def edit
    if current_user
      @project = Project.find(params[:id])
    else
      redirect_to projects_path
    end
  end

  def update
    if current_user
      project = Project.find(params[:id])
      project.update_attributes(params[:project])
      redirect_to project_path(project)
    else
      redirect_to projects_path
    end
  end

  def destroy
    if current_user
      project = Project.find(params[:id])
      project.destroy
    end
    redirect_to projects_path
  end
end
