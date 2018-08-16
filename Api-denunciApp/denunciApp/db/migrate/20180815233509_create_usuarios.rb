class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :user
      t.string :password
      t.references :perfil, foreign_key: true
      t.string :celular
      t.string :direccion
      t.string :zona

      t.timestamps
    end
  end
end
