class CreateTUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :t_usuarios do |t|
      t.string :user
      t.string :password
      t.string :celular
      t.string :direccion
      t.string :zona
      t.references :T_perfil, foreign_key: true

      t.timestamps
    end
  end
end
