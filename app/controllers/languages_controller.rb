class LanguagesController < ApplicationController
  before_action :check_for_login

  def new
    @language = Language.new
  end

  def create
    language = Language.create language_params
    @current_user.languages << language
    redirect_back :fallback_location => root_path
  end

  def edit
    @language = Language.find params[:id]
  end

  def update
    language = Language.find params[:id]
    language.update language_params
    redirect_to language_path
  end

  def destroy
    language = Language.find params[:id]
    language.destroy
    redirect_to root_path
  end

  private
  def language_params
    params.require(:language).permit(:title, :image)
  end
end
