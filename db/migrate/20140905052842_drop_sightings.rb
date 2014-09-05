class DropSightings < ActiveRecord::Migration
  def change
  	drop_table :sightings
  end
end
