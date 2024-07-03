class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.references :restaurant, null: false, foreign_key: true # ligne de reference entre la table review et restaurant
      t.timestamps
    end
  end
end
