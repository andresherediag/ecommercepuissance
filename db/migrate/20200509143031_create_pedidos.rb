class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.datetime :fecha
      t.references :producto, null: false, foreign_key: true
      t.references :Usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
