class CreateComunas < ActiveRecord::Migration[5.2]
  def change
    create_table :comunas do |t|
      t.string :nombre
      t.integer :id_provincia

      t.timestamps
    end
  end
end
