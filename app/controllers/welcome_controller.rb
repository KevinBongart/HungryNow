class WelcomeController < ApplicationController
  # GET /searches
  # GET /searches.json
  def index
    @search = Search.new
  end
end
