class CreatePublicacions < ActiveRecord::Migration[5.2]
  def change
    create_table :publicacions do |t|
      t.string :usuario
      t.string :nombreJuegoOfrece
      t.string :nombreJuegobusca
      t.text :comentarios

      t.timestamps
    end
  end
end
