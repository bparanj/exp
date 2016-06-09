class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.date :released_on
      t.decimal :price, :precision => 2, :scale => 8

      t.timestamps
    end
  end
end
