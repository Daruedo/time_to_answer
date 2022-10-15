class WelcomeController < ApplicationController
  def index
    cookies[:ruby] = "Curso de Ruby on Rails - Udemy [Cookie]"
    @coins = Coin.joins(:mining_type).group('mining_types.description').count
    @created_coin = Coin.group_by_day(:created_at).count
  rescue => e
    @error = e
  end
end
