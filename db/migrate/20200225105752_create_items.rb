class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :category_id, null: false
      t.string :thing, null: false, default: ""
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
