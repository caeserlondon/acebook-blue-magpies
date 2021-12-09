class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.text :reaction
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
