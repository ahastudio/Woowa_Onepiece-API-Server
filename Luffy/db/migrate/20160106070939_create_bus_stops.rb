class CreateBusStops < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_stops do |t|
      t.string :bus_stop_id
      t.text :bus_stop_nm
      t.text :bus_stop_addr
      t.text :bus_stop_lat
      t.text :bus_stop_lng

      t.timestamps
    end
  end
end
