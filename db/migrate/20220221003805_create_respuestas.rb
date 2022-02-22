class CreateRespuestas < ActiveRecord::Migration[6.1]
  def change
    create_table :respuestas do |t|
      t.string :nombre
      t.integer :pregunta1
      t.integer :pregunta2
      t.integer :pregunta3
      t.integer :pregunta4
      t.integer :pregunta5
      t.string :codigo
      t.integer :nota
      t.string :estado

      t.timestamps
    end
  end
end
