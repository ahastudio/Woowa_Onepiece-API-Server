class CreateBusDows < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_dows do |t|
      t.text :bus_dow_nm
      t.integer :dow_cd_id

      t.timestamps
    end
  end
end
