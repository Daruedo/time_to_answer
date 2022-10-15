class WelcomeController < ApplicationController
  def index
    cookies[:ruby] = "Curso de Ruby on Rails - Udemy [Cookie]"
  rescue => e
    @error = e
  end
end
