class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
#      t.string :item_name

#      t.string :asin
      t.string :title
      t.string :description
      t.string :detail_page_url
      t.string :small_image
      t.string :medium_image
      t.string :large_image
      t.string :raw_info

      t.timestamps null: false
    end
#      t.index [:asin], unique: true
  end
end
