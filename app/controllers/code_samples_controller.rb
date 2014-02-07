class CodeSamplesController < ApplicationController
  before_filter :signed_in_user, except: [:show]

  def show
    @code_sample = CodeSample.find(params[:id])
  end

  def new
    @code_sample = CodeSample.new
  end

  def create
    code_sample = CodeSample.create(code_sample_params)
    redirect_to code_sample
  end

  def edit
    @code_sample = CodeSample.find(params[:id])
  end

  def update
    code_sample = CodeSample.find(params[:id])
    code_sample.update_attributes(code_sample_params)
    redirect_to code_sample_path(code_sample)
  end

  def destroy
    CodeSample.find(params[:id]).destroy
    redirect_to projects_path
  end

  private
  def signed_in_user
    redirect_to home_path unless current_user
  end

  def code_sample_params
    params.require(:code_sample).permit(:title, :description, :content)
  end
end
