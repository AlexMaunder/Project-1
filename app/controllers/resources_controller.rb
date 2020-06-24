class ResourcesController < ApplicationController
  before_action :check_for_login

  def index
    @resource = Resource.find params[:repo_id]
  end

  # def new
  #   @repo = Repo.new
  # end
  #
  # def create
  #   repo = Repo.create repo_params
  #   @current_user.repos << repo
  #   redirect_to root_path
  # end
  #
  # private
  # def repo_params
  #   params.require(:repo).permit(:title)
  # end
end
