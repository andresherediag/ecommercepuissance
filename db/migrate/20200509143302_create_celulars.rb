class CreateCelulars < ActiveRecord::Migration[6.0]
  def change
    create_table :celulars do |t|
      t.string :pulgadas
      t.references :computo, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
