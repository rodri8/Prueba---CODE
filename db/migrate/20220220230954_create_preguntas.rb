class CreatePreguntas < ActiveRecord::Migration[6.1]
  def change
    create_table :preguntas do |t|
      t.references :evaluacion, null: false, foreign_key: true
      t.string :texto
      t.string :correcta
      t.string :estado

      t.timestamps
    end
  end
end
