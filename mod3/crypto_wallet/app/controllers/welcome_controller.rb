class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails - Udemy [Cookie]"
    @my_name = params[:name]
    @course = params[:course]
  end
end
