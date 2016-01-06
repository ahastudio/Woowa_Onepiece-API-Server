class CreateImgs < ActiveRecord::Migration[5.0]
  def change
    create_table :imgs do |t|
      t.text :img_nm_user
      t.text :img_nm_server
      t.string :img_size
      t.text :img_up_path
      t.text :img_dn_path
      t.references :ad, index: true, foreign_key: true

      t.timestamps
    end
  end
end
