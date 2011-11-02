class CreateRecipeSearch < ActiveRecord::Migration
  def change
    create_table :recipes_searches, :id => false do |t|
      t.integer :recipe_id
      t.integer :search_id

      t.timestamps
    end
  end
end
