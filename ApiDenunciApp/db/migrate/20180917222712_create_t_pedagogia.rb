class CreateTPedagogia < ActiveRecord::Migration[5.1]
  def change
    create_table :t_pedagogia do |t|
      t.string :titulo
      t.string :descripcion
      t.string :img
      t.string :fecha_creacion
      t.references :T_usuario, foreign_key: true
      t.references :T_pedagogia_comentario, foreign_key: true

      t.timestamps
    end
  end
end
