class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
    	t.integer :animal_id
    	t.integer :trainer_id

    	t.timestamps
    end
  end
end
