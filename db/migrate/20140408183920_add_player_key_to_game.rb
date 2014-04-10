class AddPlayerKeyToGame < ActiveRecord::Migration
  def change
  	add_column :games, :player_1_id, :integer
  	add_column :games, :player_2_id, :integer
  end
end
