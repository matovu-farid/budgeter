class SplashesController < ApplicationController
  def index
    if current_user
      redirect_to :categories
    end

  end
end