class CreateTEstadoCasoCuadrantes < ActiveRecord::Migration[5.1]
  def change
    create_table :t_estado_caso_cuadrantes do |t|
      t.references :t_muro_caso, foreign_key: true
      t.string :cuadrante
      t.string :id_estado

      t.timestamps
    end
  end
end
