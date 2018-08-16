class CreatePerfils < ActiveRecord::Migration[5.1]
  def change
    create_table :perfils do |t|
      t.string :perfil
      t.string :persona
      t.string :cuadrante
      t.string :fundacion
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
