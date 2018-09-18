class CreateTMuroComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :t_muro_comentarios do |t|
      t.string :caso
      t.string :descripcion
      t.string :fecha_descripcion
      t.references :T_usuario, foreign_key: true

      t.timestamps
    end
  end
end
