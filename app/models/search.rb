class Search < ActiveRecord::Base
  has_and_belongs_to_many :recipes, :uniq => true

  after_create :get_recipes

  PUNCHFORK_API_KEY = '57639c7dabdfe69'

  def get_recipes
    params = { :key => PUNCHFORK_API_KEY, :q => self.text, :count => 50 }
    response = Nestful.get 'http://api.punchfork.com/recipes', :format => :json, :params => params

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

      self.recipes << r
    end
  end

  def to_title
    self.text.split('-').to_sentence
  end
end
