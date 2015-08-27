class AddStatsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :favorite_climb, :string
  	add_column :users, :home_gym, :string
  	add_column :users, :role, :string
  end
end
