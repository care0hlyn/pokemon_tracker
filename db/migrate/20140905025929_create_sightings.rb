class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
    	t.string :region
    	t.integer :pokemon_id
    	t.integer :trainer_id

    	t.timestamps
    end
  end
end
