class Search < ActiveRecord::Base
  PUNCHFORK_API_KEY = '57639c7dabdfe69'

  def get_recipes
    p "(((((API CALLS)))))"
    params = { :key => PUNCHFORK_API_KEY, :q => self.text, :count => 50 }
    p params
    response = Nestful.get 'http://api.punchfork.com/recipes', :format => :json, :params => params
    p response
    recipes = []
    response['recipes'].each do |recipe|
      r = Recipe.find_by_shortcode recipe['shortcode']
      
      unless r
        r = Recipe.create(
          :rating => recipe['rating'],
          :source_name => recipe['source_name'],
          :thumb => recipe['thumb'],
          :title => recipe['title'],
          :source_url => recipe['source_url'],
          :pf_url => recipe['pf_url'],
          :published => recipe['published'],
          :source_img => recipe['source_img'],
          :shortcode => recipe['shortcode']
        )
      end

      recipes << r
    end

    recipes
  end
end
