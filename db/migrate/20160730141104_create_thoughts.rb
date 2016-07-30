class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :title
      t.string :description
      t.integer :quality, default: 0
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
