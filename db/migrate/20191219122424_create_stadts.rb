class CreateStadts < ActiveRecord::Migration[5.2]
  def change
    create_table :stadts do |t|
      t.integer :anzahlEinwohner
      t.string :name
      t.string :ort

      t.timestamps
    end
  end
end
