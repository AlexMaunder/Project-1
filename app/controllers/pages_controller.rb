class PagesController < ApplicationController
  def home
    @lang = Language.all
  end
end
