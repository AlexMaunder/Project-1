class ResourcesController < ApplicationController
  before_action :check_for_login

  def index
    @resource = Resource.find params[:repo_id]
  end

  def show
    @resource = Resource.find params[:id]
  end

  def new
    @resource = Resource.new
  end

  def create
    resource = Resource.create resource_params
    @current_user.repos.find(params["repo_id"]).resources << resource
    redirect_to repo_path(params["repo_id"])
  end

  def edit
    @resource = Resource.find params[:id]
  end

  def update
    resource = Resource.find params[:id]
    resource.update resource_params
    redirect_to repo_path(params[:repo_id])
  end

  def destroy
    resource = Resource.find params[:id]
    resource.destroy
    redirect_to repos_path
  end

  private
  def resource_params
    params.require(:resource).permit(:title, :url)
  end
end
