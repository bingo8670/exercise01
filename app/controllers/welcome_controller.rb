class WelcomeController < ApplicationController
  def index
    flash[:notice] = "稍息，立正，讲一下！"
  end
end
