class CreateEinwohners < ActiveRecord::Migration[5.2]
  def change
    create_table :einwohners do |t|
      t.string :name
      t.integer :alter
      t.references :stadt, foreign_key: true

      t.timestamps
    end
  end
end
