class Likes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :post, null: true, foreign_key: true
      t.references :comment, null: true, foreign_key: true
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
