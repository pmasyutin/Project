class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :date
      t.string :statya
      t.integer :summa
      t.text :comment

      t.timestamps
    end
  end
end
