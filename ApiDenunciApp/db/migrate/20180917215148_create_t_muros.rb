class CreateTMuros < ActiveRecord::Migration[5.1]
  def change
    create_table :t_muros do |t|
      t.string :img
      t.string :descripcion
      t.string :fecha_creacion
      t.string :ubicacion
      t.string :caso
      t.references :T_usuario, foreign_key: true

      t.timestamps
    end
  end
end
