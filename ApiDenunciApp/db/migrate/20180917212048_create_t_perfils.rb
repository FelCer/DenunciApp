class CreateTPerfils < ActiveRecord::Migration[5.1]
  def change
    create_table :t_perfils do |t|
      t.string :idPerfil
      t.string :persona
      t.string :cuadrante
      t.string :fundacion
      t.references :T_usuario, foreign_key: true

      t.timestamps
    end
  end
end
