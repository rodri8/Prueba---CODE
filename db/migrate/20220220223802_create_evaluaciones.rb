class CreateEvaluaciones < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluaciones do |t|
      t.string :nombre
      t.integer :preguntas
      t.string :estado

      t.timestamps
    end
  end
end
