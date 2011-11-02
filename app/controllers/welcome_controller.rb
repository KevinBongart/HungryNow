class WelcomeController < ApplicationController
  # GET /searches
  # GET /searches.json
  def index
    values = [
      'Nutella',
      'Strawberries',
      'Chicken, parmesan',
      'Rice',
      'Salmon, tomatoes',
      'Noodles',
      'Beef, onions',
      'Tomatoes, mozarella']

    @search = Search.new
    @value  = values[rand(values.length)]
  end
end
