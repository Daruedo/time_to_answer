class WelcomeController < ApplicationController
  def index
    @my_name = params[:name]
    @course = params[:course]
  end
end
