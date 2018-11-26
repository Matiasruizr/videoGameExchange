class AddFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nombre_usuario, :string
    add_column :users, :rut, :string
    add_column :users, :celular, :string
    add_column :users, :sexo, :string
    add_column :users, :codigo_postal, :string
    add_column :users, :fecha_nacimiento, :date
    add_column :users, :comuna, :string
  end
end


