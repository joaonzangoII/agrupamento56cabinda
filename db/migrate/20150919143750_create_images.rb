class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :alt
      t.string :src
      t.string :url
      t.string :secure_url
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
