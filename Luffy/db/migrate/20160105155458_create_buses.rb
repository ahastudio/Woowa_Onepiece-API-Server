class CreateBuses < ActiveRecord::Migration[5.0]
  def change
    create_table :buses do |t|
      t.string :bus_id
      t.text :bus_nm
      t.references :bus_dow, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
