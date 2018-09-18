class CreateTPedagogiaComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :t_pedagogia_comentarios do |t|
      t.references :T_pedagodia, foreign_key: true
      t.string :descripcion
      t.string :fecha_creacion
      t.string :T_usuario_references

      t.timestamps
    end
  end
end
