class CreateDislikes < ActiveRecord::Migration[5.0]
  def change
    create_table :dislikes do |t|
      t.string :name
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
