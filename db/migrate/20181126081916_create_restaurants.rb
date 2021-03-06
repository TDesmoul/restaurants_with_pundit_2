class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
