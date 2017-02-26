class PagesController < ApplicationController


  def home
    @spaces = Space.all
  end

  def about
  end
end
