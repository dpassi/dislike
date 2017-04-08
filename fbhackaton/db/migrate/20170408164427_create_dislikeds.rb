class CreateDislikeds < ActiveRecord::Migration[5.0]
  def change
    create_table :dislikeds do |t|
      t.integer :user_id
      t.integer :dislike_id

      t.timestamps
    end
  end
end
