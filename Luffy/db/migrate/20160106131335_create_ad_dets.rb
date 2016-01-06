class CreateAdDets < ActiveRecord::Migration[5.0]
  def change
    create_table :ad_dets do |t|
      t.text :ad_det_lng
      t.text :ad_det_lat
      t.text :ad_det_ct1
      t.text :ad_det_ct2
      t.references :ad, index: true, foreign_key: true

      t.timestamps
    end
  end
end
