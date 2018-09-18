class CreateEstadoCasos < ActiveRecord::Migration[5.1]
  def change
    create_table :estado_casos do |t|
      t.references :T_estado_caso_cuadrante, foreign_key: true
      t.string :estado

      t.timestamps
    end
  end
end
