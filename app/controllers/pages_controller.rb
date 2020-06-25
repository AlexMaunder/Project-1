class PagesController < ApplicationController
  def home
    @lang = Language.all
    @language = Language.new
  end
end
