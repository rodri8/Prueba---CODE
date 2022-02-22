class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.string :nombre_comercial
      t.string :razon_social
      t.string :telefono
      t.string :correo
      t.string :nit
      t.string :direccion
      t.string :estado

      t.timestamps
    end
  end
end
