class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :nombre_usuario
      t.string :contrasena
      t.string :rut
      t.string :direccion
      t.string :sexo
      t.integer :celular
      t.integer :codigo_postal
      t.date :fecha_nacimiento
      t.integer :id_comuna

      t.timestamps
    end
  end
end
