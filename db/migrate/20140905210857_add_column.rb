class AddColumn < ActiveRecord::Migration
  def change
  	add_column :masters, :status, :boolean
  end
end
