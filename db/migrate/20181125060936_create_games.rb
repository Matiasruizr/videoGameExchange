class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :nombre
      t.integer :anio
      t.string :estado
      t.string :consola
      t.string :categoria

      t.timestamps
    end
  end
end
