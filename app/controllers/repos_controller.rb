class ReposController < ApplicationController
  before_action :check_for_login

  def index
    @repos = Repo.all
  end

  def show
    @repo = Repo.find params[:id]
  end

  def new
    @repo = Repo.new
  end

  def create
    repo = Repo.create repo_params
    @current_user.repos << repo
    redirect_to repo_path(repo.id)
  end

  def edit
    @repo = Repo.find params[:id]
  end

  def update
    repo = Repo.find params[:id]
    repo.update repo_params
    redirect_to repo_path
  end

  def destroy
    repo = Repo.find params[:id]
    repo.destroy
    redirect_to repos_path
  end

  private
  def repo_params
    params.require(:repo).permit(:title)
  end
end
