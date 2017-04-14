class AddLocationToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :lat, :float
    add_column :topics, :lon, :float
  end
end
