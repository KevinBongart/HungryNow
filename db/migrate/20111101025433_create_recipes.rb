class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.float :rating
      t.string :source_name
      t.string :thumb
      t.string :title
      t.string :source_url
      t.string :pf_url
      t.datetime :published
      t.string :source_img
      t.string :shortcode

      t.timestamps
    end
  end
end
