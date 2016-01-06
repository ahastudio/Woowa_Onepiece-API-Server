class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.integer :ad_cd_id
      t.text :ad_title
      t.date :ad_start_dt
      t.date :ad_end_dt
      t.integer :ad_det_id
      t.references :bus_stop, index: true, foreign_key: true

      t.timestamps
    end
  end
end
