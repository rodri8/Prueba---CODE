class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :nombre
      t.string :estado

      t.timestamps
    end
  end
end
