class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
    	t.string :make
    	t.string :model
    	t.integer :year
    	t.text :description

      t.timestamps
    end
  end
end
