class WelcomeController < ApplicationController
  # GET /searches
  # GET /searches.json
  def index
    values = [
      'Nutella and cream',
      'Strawberries and sugar',
      'Chicken and parmesan',
      'Steak and mushrooms',
      'Turkey and honey',
      'Rice, lime and shrimps',
      'Salmon, tomatoes',
      'Noodles, basil and mint',
      'Beef, onions',
      'Avocado, beans and corn',
      'Tomato, rice and salad']

    @search = Search.new
    @value  = values[rand(values.length)]
  end
end
