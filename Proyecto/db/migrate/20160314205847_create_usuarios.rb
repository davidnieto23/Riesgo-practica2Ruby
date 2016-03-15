class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :password
      t.string :tipoDeSangre
      t.string :telefono
      t.string :direccion

      t.timestamps null: false
    end
  end
end
