class CreateProvincia < ActiveRecord::Migration[5.2]
  def change
    create_table :provincia do |t|
      t.string :nombre
      t.integer :id_region

      t.timestamps
    end
  end
end
