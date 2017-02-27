class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.references :drink, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
