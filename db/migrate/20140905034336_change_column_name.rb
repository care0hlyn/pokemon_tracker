class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :sightings, :pokemon_id, :animal_id
  end
end
