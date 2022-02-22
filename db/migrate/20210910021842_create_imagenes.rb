class CreateImagenes < ActiveRecord::Migration[6.1]
  def change
    create_table :imagenes do |t|
      t.string :nombre
      t.string :base64

      t.timestamps
    end
  end
end
