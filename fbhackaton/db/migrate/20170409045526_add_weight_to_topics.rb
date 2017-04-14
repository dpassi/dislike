class AddWeightToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :weight, :float
  end
end
