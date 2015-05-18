class CreateAsistentes < ActiveRecord::Migration
  def change
    create_table :asistentes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.date :fecha_nacimiento
      t.string :cedula
      t.string :direccion
      t.string :telefono
      t.string :forma_pago

      t.timestamps null: false
    end
  end
end
